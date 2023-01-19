package com.zq.backend.services;

import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zq.backend.common.Constant;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Block;
import com.zq.backend.entity.Invitation;
import com.zq.backend.entity.User;
import com.zq.backend.entity.dto.UserCandidateDTO;
import com.zq.backend.entity.dto.UserDTO;
import com.zq.backend.entity.dto.UserDetailDTO;
import com.zq.backend.entity.dto.UserLoginDTO;
import com.zq.backend.mapper.UserMapper;

import com.zq.backend.utils.JWTUtils;
import com.zq.backend.utils.StringBuildUtils;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserServiceInterface {

    @Resource
    private RedisTemplate redisTemplate;


    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    /**
     * save a user
     * @param user user entity
     * @return update result
     */
    @Override
    public Result updateUser(User user){
        // password update not supported in here
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id", user.getId());
        user.setPassword(getOne(queryWrapper).getPassword());

        // check input values
        String message = inputVerify(user);
        if(!message.equals("pass")){
            return Result.error(Constant.CODE_401, message);
        }

        if(!updateById(user)){
            return Result.error(Constant.CODE_401, "invalid update information request");
        }
        return Result.success();
    }

    @Override
    public Result register(User user){
        // reset id to be null
        user.setId(null);
        user.setMembership(null);
        user.setHobby(null);
        // check input values
        String message = inputVerify(user);
        if(!message.equals("pass")){
            return Result.error(Constant.CODE_401, message);
        }

        user.setRegisterDate(sdf.format(new Date()));
         // execute insert new user
        if(!save(user)){
            return Result.error(Constant.CODE_401, "invalid register information request");
        }
        return Result.success();
    }

    @Override
    public Result login(UserLoginDTO userLoginDTO) {
        // build query
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("telephone", userLoginDTO.getTelephone());
        queryWrapper.eq("password", userLoginDTO.getPassword());
        List<User> list = list(queryWrapper);
        if (list.size() != 1){
            return Result.error(Constant.CODE_401, "telephone or password invalid");
        }
        User user = list.get(0);

        user.setLastLoginTime(sdf.format(new Date()));
        updateById(user);
        UserDTO userDTO = new UserDTO();
        BeanUtil.copyProperties(list.get(0), userDTO, true); //copy value into DTO, same as userDTO.telephone = list.get(0).telephone
        String token = JWTUtils.getToken(list.get(0));
        redisTemplate.opsForValue().set("token" + userLoginDTO.getTelephone(), token);
        redisTemplate.expire("token" + userLoginDTO.getTelephone(),300, TimeUnit.MINUTES);
        userDTO.setToken(token);
        return Result.success(userDTO);
    }

    @Override
    public boolean checkExisting(Integer userId) {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id", userId);
        return (list(queryWrapper).size() != 1);
    }

    @Override
    public List<UserCandidateDTO> getRandomUser(Integer userId, Integer gender, List<Block> blockList, List<Invitation> invitationList, String query) {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        // do not find themselves
        queryWrapper.ne("id", userId);
        queryWrapper.ne("gender", gender);
        // remove blocked user
        for (Block b: blockList){
            if (b.getOwner().equals(userId)){
                queryWrapper.ne("id", b.getTargetUser());
            }else {
                queryWrapper.ne("id", b.getOwner());
            }
        }
        // remove invited user
        for (Invitation i: invitationList){
            if (i.getSender().equals(userId)){
                queryWrapper.ne("id", i.getReceiver());
            }else {
                queryWrapper.ne("id", i.getSender());
            }
        }
        // get random user
        int count = (int) this.count();
        int randomCount =(int) (Math.random()*count);
        int requiredNum = 10;
        if (randomCount > count-requiredNum) {
            randomCount = count-requiredNum;
        }
        queryWrapper.like("nickname", query);
        queryWrapper.orderByDesc("id");
        queryWrapper.last("limit "+ randomCount + ", 10");
        List<User> randomList = list(queryWrapper);

        while (randomList.size() < 10){
            randomCount =(int) (Math.random()*count);
            requiredNum = 10;
            if (randomCount > count-requiredNum) {
                randomCount = count-requiredNum;
            }
            queryWrapper.last("limit "+ randomCount + ", 10");
            randomList.addAll(list(queryWrapper));
        }

        // transfer user to Candidate DTO
        List<UserCandidateDTO> userCandidateDTOS = new ArrayList<>();
        for (User u: randomList){
            UserCandidateDTO userCandidateDTO = new UserCandidateDTO();
            BeanUtil.copyProperties(u, userCandidateDTO, true);
            userCandidateDTO.setAlbum(StringBuildUtils.splitData(userCandidateDTO.getAlbum()).get(0).toString());
            userCandidateDTOS.add(userCandidateDTO);
        }
        return userCandidateDTOS;
    }

    @Override
    public UserDetailDTO getUserDetail(Integer targetUserId, Boolean checkPrivacyInfo) {
        UserDetailDTO userDetailDTO = new UserDetailDTO();
        User user = getById(targetUserId);
        BeanUtil.copyProperties(user, userDetailDTO, true);
        if (!checkPrivacyInfo){
            userDetailDTO.setAddress("");
            userDetailDTO.setIdcard("");
            userDetailDTO.setWechat("");
            userDetailDTO.setTelephone(null);
        }
        return userDetailDTO;
    }

    /**
     * verify user information before register or update
     * @param user required user entity
     * @return "pass" means input value is ok, otherwise it will show error type
     */
    @Override
    public String inputVerify(User user) {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        List<User> list;
        // check telephone
        if (user.getTelephone() != null){
            //update mode
            if (user.getId() != null){
                queryWrapper.ne("id", user.getId());
            }
            queryWrapper.eq("telephone", user.getTelephone());

            list = list(queryWrapper);
            if (list.size() != 0){
                return "telephone has been used";
            }
        }
        // check idcard
        if (user.getIdcard() != null){
            queryWrapper.clear();
            queryWrapper.eq("idcard", user.getIdcard());
            //update mode
            if (user.getId() != null){
                queryWrapper.ne("id", user.getId());
            }
            list = list(queryWrapper);
            if (list.size() != 0){
                return "idcard has been used";
            }
        }
        // check wechat
        if (user.getWechat() != null){
            queryWrapper.clear();
            queryWrapper.eq("wechat", user.getWechat());
            //update mode
            if (user.getId() != null){
                queryWrapper.ne("id", user.getId());
            }
            list = list(queryWrapper);
            if (list.size() != 0){
                return "wechat has been used";
            }
        }
        // check Height
        if (user.getHeight() != null){
            queryWrapper.clear();
            if (user.getHeight() < 0 || user.getHeight() > 250){
                return "invalid height input";
            }
        }
        // check married
        if (user.getMarried() != null){
            queryWrapper.clear();
            if (user.getMarried() != 0 && user.getMarried() != 1){
                return "invalid married input";
            }
        }
        // check gender
        if (user.getGender() != null){
            queryWrapper.clear();
            if (user.getGender() != 0 && user.getGender() != 1){
                return "invalid gender input";
            }
        }
        // check Education
        if (user.getEducation() != null){
            queryWrapper.clear();
            if (!user.getEducation().equals("J") && !user.getEducation().equals("U") && !user.getEducation().equals("P") && !user.getEducation().equals("D")){
                return "invalid Education input";
            }
        }
        // check Education
        if (user.getSmoking() != null){
            queryWrapper.clear();
            if (user.getSmoking() != 0 && user.getSmoking() != 1 && user.getSmoking() != 2 && user.getSmoking() != 3){
                return "invalid Smoking input";
            }
        }
        // check Education
        if (user.getDrinking() != null){
            queryWrapper.clear();
            if (user.getDrinking() != 0 && user.getDrinking() != 1 && user.getDrinking() != 2 && user.getDrinking() != 3){
                return "invalid Drinking input";
            }
        }
        return "pass";
    }
//    // Mybatis Version Demo
//    public int save(User user){
//        if (user.getId() != null){ // if there is no id in JSON package, execute insert new user
//            return userMapper.update(user);
//        }else { // if there is id in JSON package, execute update user
//            return userMapper.insert(user);
//        }
//    }
}

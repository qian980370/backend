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
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserServiceInterface {

    @Resource
    private RedisTemplate redisTemplate;

    /**
     * save a user
     * @param user user entity
     * @return update result
     */
    @Override
    public Result updateUser(User user){
        if(!updateById(user)){
            return Result.error(Constant.CODE_401, "invalid update information request");
        }
        return Result.success();
    }

    @Override
    public Result register(User user){
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
        BeanUtil.copyProperties(list.get(0), userLoginDTO, true); //copy value into DTO, same as userDTO.telephone = list.get(0).telephone
        String token = JWTUtils.getToken(list.get(0));
        redisTemplate.opsForValue().set("token" + userLoginDTO.getTelephone(), token);
        redisTemplate.expire("token" + userLoginDTO.getTelephone(),300, TimeUnit.MINUTES);
        userLoginDTO.setToken(token);
        return Result.success(userLoginDTO);
    }

    @Override
    public boolean checkExisting(Integer userId) {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id", userId);
        return (list(queryWrapper).size() != 1);
    }

    @Override
    public List<UserCandidateDTO> getRandomUser(Integer userId, List<Block> blockList, String query) {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        // remove blocked user
        for (Block b: blockList){
            if (b.getOwner().equals(userId)){
                queryWrapper.ne("id", b.getTargetUser());
            }else {
                queryWrapper.ne("id", b.getOwner());
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
    public UserDetailDTO getUserDetail(Integer targetUserId, Boolean isInvited) {
        UserDetailDTO userDetailDTO = new UserDetailDTO();
        User user = getById(targetUserId);
        BeanUtil.copyProperties(user, userDetailDTO, true);
        if (!isInvited){
            userDetailDTO.setAddress("");
            userDetailDTO.setIdcard("");
            userDetailDTO.setWechat("");
            userDetailDTO.setTelephone(null);
        }
        return userDetailDTO;
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

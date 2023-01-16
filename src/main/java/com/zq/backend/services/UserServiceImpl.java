package com.zq.backend.services;

import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zq.backend.common.Constant;
import com.zq.backend.common.Result;
import com.zq.backend.entity.User;
import com.zq.backend.entity.dto.UserDTO;
import com.zq.backend.mapper.UserMapper;

import com.zq.backend.utils.JWTUtils;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
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
    public Result login(UserDTO userDTO) {
        // build query
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("telephone", userDTO.getTelephone());
        queryWrapper.eq("password", userDTO.getPassword());
        List<User> list = list(queryWrapper);
        if (list.size() != 1){
            return Result.error(Constant.CODE_401, "telephone or password invalid");
        }
        BeanUtil.copyProperties(list.get(0), userDTO, true); //copy value into DTO, same as userDTO.telephone = list.get(0).telephone
        String token = JWTUtils.getToken(list.get(0));
        redisTemplate.opsForValue().set("token" + userDTO.getTelephone(), token);
        redisTemplate.expire("token" + userDTO.getTelephone(),300, TimeUnit.MINUTES);
        userDTO.setToken(token);
        return Result.success(userDTO);
    }

    @Override
    public boolean checkExisting(Integer userId) {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id", userId);
        return (list(queryWrapper).size() == 1);
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

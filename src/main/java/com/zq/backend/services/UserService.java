package com.zq.backend.services;

import com.zq.backend.entity.User;
import com.zq.backend.mapper.UserMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserService {

    @Resource
    private UserMapper userMapper;

    public int save(User user){
        if (user.getId() != null){ // if there is no id in JSON package, execute insert new user
            return userMapper.insert(user);
        }else { // if there is id in JSON package, execute update user
            return userMapper.update(user);
        }
    }
}

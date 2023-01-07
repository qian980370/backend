package com.zq.backend.controller;


import com.zq.backend.entity.User;
import com.zq.backend.mapper.UserMapper;
import com.zq.backend.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;

    @Resource
    private UserMapper userMapper;

    // get all users
    @GetMapping("/")
    public List<User> index(){
        return userMapper.findAll();
    }

    // insert user into table
    @PostMapping("/save")
    public Integer save(User user){
        return userService.save(user);
    }
}

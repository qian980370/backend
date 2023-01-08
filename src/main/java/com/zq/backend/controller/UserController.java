package com.zq.backend.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zq.backend.entity.User;
import com.zq.backend.mapper.UserMapper;
import com.zq.backend.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
        return userService.list();
    }

    // insert user into table
    @PostMapping("/save")
    public boolean save(@RequestBody User user){
        return userService.saveUser(user);
    }

    // query user pages
    @GetMapping("/page")
    public IPage<User> findPage(@RequestParam Integer pageNum, @RequestParam Integer pageSize, @RequestParam(defaultValue = "") String nickname){

        IPage<User> page = new Page<>(pageNum,pageSize);
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();

        // check "" value; null and "" are different
        if (!nickname.equals("")){
            queryWrapper.like("nickname", nickname);
        }

        return userService.page(page, queryWrapper);
    }

//    // 分页查询 mybatis version
//    // select * from user limit 0,5 从0开始每次选取5个，包含0；set begin index of searching: (pageNum - 1) * pageSize
//    @GetMapping("/page")
//    public Map<String, Object> findPage(@RequestParam Integer pageNum, @RequestParam Integer pageSize){
//        pageNum = (pageNum - 1) * pageSize; // calculate begin index of searching
//        Integer total = userMapper.selectTotalPage();
//        List<User> data = userMapper.selectPage(pageNum, pageSize);
//        Map<String, Object> res = new HashMap<>();
//        res.put("data", data);
//        res.put("total", total);
//        return res;
//    }
}

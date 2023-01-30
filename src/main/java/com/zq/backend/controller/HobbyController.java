package com.zq.backend.controller;


import com.zq.backend.common.Constant;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Hobbies;
import com.zq.backend.entity.User;
import com.zq.backend.services.HobbyServiceImpl;

import com.zq.backend.services.UserServiceImpl;
import com.zq.backend.utils.JWTUtils;
import com.zq.backend.utils.StringBuildUtils;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/hobby")
public class HobbyController {

    @Resource
    private HobbyServiceImpl hobbyService;
    @Resource
    private UserServiceImpl userService;

    @PostMapping("/add")
    public Result add(@RequestHeader(value = "token",required = false) String token, @RequestParam String hobbyId){
        //get user id
        Integer userId = Integer.parseInt(JWTUtils.decodeUserId(token));
        // check hobbyID exists in the database
        try{
            if (!hobbyService.checkExisting(hobbyId)){
                return Result.error(Constant.CODE_401, Constant.IMSG_invalid_hobby);
            }
        }catch (NumberFormatException e){
            return Result.error(Constant.CODE_401, Constant.IMSG_invalid_hobby);
        }
        // check duplicate add request
        String oldList = userService.getById(userId).getHobby();
        try{
            List<Integer> oldCollection = StringBuildUtils.splitData(oldList);
            for (Integer e: StringBuildUtils.splitData(hobbyId)){
                if(oldCollection.contains(e)){
                    return Result.error(Constant.CODE_401, Constant.MSG_duplicate_hobby);
                }
            }
        }catch (NumberFormatException e){
            return Result.error(Constant.CODE_401, Constant.IMSG_invalid_hobby);
        }
        // update user's old hobbies list
        String hobbyIdList = oldList + ";" + hobbyId;
        // build user form
        User user = new User();
        user.setId(Integer.parseInt(JWTUtils.decodeUserId(token)));
        user.setHobby(hobbyIdList);
        return userService.updateUser(user);
    }

    @PostMapping("/update")
    public Result updateHobby(@RequestHeader(value = "token",required = false) String token, @RequestParam String hobbyIdList){
        // build user form
        User user = new User();
        user.setId(Integer.parseInt(JWTUtils.decodeUserId(token)));
        // if get empty hobby id
        if (hobbyIdList.equals("")){
            user.setHobby("");
            return userService.updateUser(user);
        }
        // check hobbyID exists in the database
        try{
            if (!hobbyService.checkExisting(hobbyIdList)){
                return Result.error(Constant.CODE_401, Constant.IMSG_invalid_hobby);
            }
        }catch (NumberFormatException e){
            return Result.error(Constant.CODE_401, Constant.IMSG_invalid_hobby);
        }
        user.setHobby(hobbyIdList);
        return userService.updateUser(user);
        //return hobbyService.updateHobby(Integer.parseInt(JWTUtils.decodeUserId(token)), hobbyIdList);
    }

    @GetMapping("/getHobby")
    public Result getHobby(@RequestHeader(value = "token",required = false) String token, @RequestParam(defaultValue = "") String query, @RequestParam(defaultValue = "false") String duplicate){
        // get user's hobbies list
        String hobbyList = userService.getById(Integer.parseInt(JWTUtils.decodeUserId(token))).getHobby();
        // transfer string to list
        try{
            List<Integer> hobbyIdCollection = StringBuildUtils.splitData(hobbyList);
            return Result.success(hobbyService.getHobby(query, hobbyIdCollection, duplicate));
        }catch (NumberFormatException e){
            return Result.error(Constant.CODE_401, Constant.IMSG_invalid_hobby);
        }
    }

    @GetMapping("/getHobbyList")
    public Result getHobbyList(@RequestHeader(value = "token",required = false) String token){
        // build user form
        String hobbyList = userService.getById(Integer.parseInt(JWTUtils.decodeUserId(token))).getHobby();
        try{
            List<Integer> idCollection = StringBuildUtils.splitData(hobbyList);
            return Result.success(hobbyService.listByIds(idCollection));
        }catch (NumberFormatException e){
            return Result.error(Constant.CODE_401, Constant.IMSG_invalid_hobby);
        }
    }
}

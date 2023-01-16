package com.zq.backend.controller;

import com.zq.backend.common.Constant;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Block;
import com.zq.backend.entity.Follow;
import com.zq.backend.services.BlockServiceImpl;
import com.zq.backend.services.FollowServiceImpl;
import com.zq.backend.services.UserServiceImpl;
import com.zq.backend.utils.JWTUtils;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/follow")
public class FollowController {
    @Resource
    private BlockServiceImpl BlockService;
    @Resource
    private FollowServiceImpl followService;
    @Resource
    private UserServiceImpl userService;

    @PostMapping("/addFollow")
    public Result addBlock(@RequestHeader(value = "token",required = false) String token, @RequestParam Integer targetId){
        // get owner id
        Integer ownerId = Integer.parseInt(JWTUtils.decodeUserId(token));
        // remove follow relationship if exist
        List<Block> blockRelationship = BlockService.getSpecificBlock(ownerId, targetId);
        if (blockRelationship.size() != 0){
            return Result.error(Constant.CODE_401, "you have block target user");
        }
        blockRelationship = BlockService.getSpecificBlock(targetId, ownerId);
        if (blockRelationship.size() != 0){
            return Result.error(Constant.CODE_401, "you has been blocked by target user");
        }
        // check existing of block user
        if (!userService.checkExisting(targetId)){
            return Result.error(Constant.CODE_401, "not exist block user id");
        }
        return followService.buildFollow(ownerId, targetId);
    }

    @PostMapping("/cancelFollow")
    public Result cancelBlock(@RequestHeader(value = "token",required = false) String token, @RequestParam Integer followId){
        // get owner id
        Integer ownerId = Integer.parseInt(JWTUtils.decodeUserId(token));
        return followService.cancelFollow(ownerId, followId);
    }

    @GetMapping("/followList")
    public Result getBlockList(@RequestHeader(value = "token",required = false) String token){
        // get owner id
        Integer ownerId = Integer.parseInt(JWTUtils.decodeUserId(token));
        return Result.success(followService.getFollowList(ownerId));
    }
}

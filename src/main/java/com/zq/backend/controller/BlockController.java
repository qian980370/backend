package com.zq.backend.controller;

import com.zq.backend.common.Constant;
import com.zq.backend.common.Result;
import com.zq.backend.services.BlockServiceImpl;
import com.zq.backend.services.UserServiceImpl;
import com.zq.backend.utils.JWTUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

public class BlockController {
    @Resource
    private BlockServiceImpl BlockService;
    @Resource
    private UserServiceImpl userService;

    @PostMapping("/addBlock")
    public Result addBlock(@RequestHeader(value = "token",required = false) String token, @RequestParam Integer targetId){
        // get owner id
        Integer ownerId = Integer.parseInt(JWTUtils.decodeUserId(token));
        // check existing of block user
        if (!userService.checkExisting(targetId)){
            return Result.error(Constant.CODE_401, "not exist block user id");
        }
        return BlockService.buildBlock(ownerId, targetId);
    }

    @PostMapping("/cancelBlock")
    public Result cancelBlock(@RequestHeader(value = "token",required = false) String token, @RequestParam Integer blockId){
        // get owner id
        Integer ownerId = Integer.parseInt(JWTUtils.decodeUserId(token));
        return BlockService.cancelBlock(ownerId, blockId);
    }

    @GetMapping("/blockList")
    public Result getBlockList(@RequestHeader(value = "token",required = false) String token){
        // get owner id
        Integer ownerId = Integer.parseInt(JWTUtils.decodeUserId(token));
        return Result.success(BlockService.getBlockList(ownerId));
    }

}

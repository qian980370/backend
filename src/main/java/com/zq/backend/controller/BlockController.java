package com.zq.backend.controller;

import com.zq.backend.common.Constant;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Block;
import com.zq.backend.entity.Follow;
import com.zq.backend.entity.Invitation;
import com.zq.backend.entity.User;
import com.zq.backend.entity.dto.BlockUserDTO;
import com.zq.backend.services.BlockServiceImpl;
import com.zq.backend.services.FollowServiceImpl;
import com.zq.backend.services.InvitationServiceImpl;
import com.zq.backend.services.UserServiceImpl;
import com.zq.backend.utils.JWTUtils;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/block")
public class BlockController {
    @Resource
    private BlockServiceImpl BlockService;
    @Resource
    private FollowServiceImpl followService;
    @Resource
    private UserServiceImpl userService;
    @Resource
    InvitationServiceImpl invitationService;

    @PostMapping("/addBlock")
    public Result addBlock(@RequestHeader(value = "token",required = false) String token, @RequestParam Integer targetId){
        // get owner id
        Integer ownerId = Integer.parseInt(JWTUtils.decodeUserId(token));
        // check existing of block user
        if (userService.checkExisting(targetId)){
            return Result.error(Constant.CODE_401, "not exist block user id");
        }
        // remove follow relationship if exist
        List<Follow> followRelationship = followService.getSpecificFollow(ownerId, targetId);
        if (followRelationship.size() != 0){
            followService.removeById(followRelationship.get(0));
        }
        followRelationship = followService.getSpecificFollow(targetId, ownerId);
        if (followRelationship.size() != 0){
            followService.removeById(followRelationship.get(0));
        }
        Result result = BlockService.buildBlock(ownerId, targetId);
        if(result.getCode().equals(Constant.CODE_200)){
            List<Follow> follows = followService.getSpecificFollow(ownerId, targetId);
            follows.addAll(followService.getSpecificFollow(targetId, ownerId));
            for (Follow e: follows){
                followService.removeById(e.getId());
            }
            List<Invitation> invitations = invitationService.getAllStateSpecificInvitation(ownerId, targetId);
            invitations.addAll(invitationService.getAllStateSpecificInvitation(targetId, ownerId));
            for (Invitation e: invitations){
                invitationService.removeById(e.getId());
            }
        }
        return result;
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
        return Result.success(transferBlockList(BlockService.getBlockList(ownerId)));
    }

    public List<BlockUserDTO> transferBlockList(List<Block> list) {
        List<BlockUserDTO> blockUserDTOS = new ArrayList<>();
        for (Block e: list){
            BlockUserDTO blockUserDTO = new BlockUserDTO();
            User user = userService.getById(e.getTargetUser());
            blockUserDTO.setId(e.getId());
            blockUserDTO.setUserId(e.getTargetUser());
            blockUserDTO.setBlockingTime(e.getBlockingTime());
            blockUserDTO.setNickname(user.getNickname());
            blockUserDTO.setIcon(user.getIcon());
            blockUserDTOS.add(blockUserDTO);
        }
        return blockUserDTOS;
    }

}

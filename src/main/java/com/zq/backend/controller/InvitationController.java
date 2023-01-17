package com.zq.backend.controller;

import com.zq.backend.common.Constant;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Block;
import com.zq.backend.entity.Invitation;
import com.zq.backend.entity.User;
import com.zq.backend.entity.dto.BlockUserDTO;
import com.zq.backend.entity.dto.InvitationUserDTO;
import com.zq.backend.services.BlockServiceImpl;
import com.zq.backend.services.InvitationServiceImpl;
import com.zq.backend.services.UserServiceImpl;
import com.zq.backend.utils.JWTUtils;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/invitation")
public class InvitationController {
    @Resource
    private BlockServiceImpl blockService;
    @Resource
    private InvitationServiceImpl invitationService;
    @Resource
    private UserServiceImpl userService;

    @PostMapping("/add")
    public Result buildInvitation(@RequestHeader(value = "token",required = false) String token, @RequestParam Integer targetId){
        // get owner id
        Integer ownerId = Integer.parseInt(JWTUtils.decodeUserId(token));
        // check existing of block user
        if (userService.checkExisting(targetId)){
            return Result.error(Constant.CODE_401, "not exist user id");
        }
        if (blockService.getSpecificBlock(targetId, ownerId).size() != 0){
            return Result.error(Constant.CODE_401, "you cannot send a invitation to the someone who has blocked you");
        }
        if (blockService.getSpecificBlock(ownerId, targetId).size() != 0){
            return Result.error(Constant.CODE_401, "you cannot send a invitation to the user which has been blocked by yourself");
        }
        return invitationService.buildInvitation(ownerId, targetId);
    }

    @PutMapping("/update")
    public Result updateInvitation(@RequestHeader(value = "token",required = false) String token, @RequestParam Integer invitationId, @RequestParam Integer state){
        // get owner id
        Integer ownerId = Integer.parseInt(JWTUtils.decodeUserId(token));
        return invitationService.updateInvitation(ownerId, invitationId, state);
    }

    @GetMapping("/getList")
    public Result getInvitationList(@RequestHeader(value = "token",required = false) String token){
        // get owner id
        Integer ownerId = Integer.parseInt(JWTUtils.decodeUserId(token));
        return Result.success(transferInvitationList(invitationService.getInvitationList(ownerId), ownerId));
    }

    @GetMapping("/getMyInvitation")
    public Result getMyInvitation(@RequestHeader(value = "token",required = false) String token){
        // get owner id
        Integer ownerId = Integer.parseInt(JWTUtils.decodeUserId(token));
        return Result.success(transferInvitationList(invitationService.getMyInvitationList(ownerId), ownerId));
    }

    @GetMapping("/getSuccessInvitationList")
    public Result getSuccessInvitationList(@RequestHeader(value = "token",required = false) String token){
        // get owner id
        Integer ownerId = Integer.parseInt(JWTUtils.decodeUserId(token));
        return Result.success(transferInvitationList(invitationService.getSuccessInvitationList(ownerId), ownerId));
    }

    @GetMapping("/getHistory")
    public Result getHistoryInvitationList(@RequestHeader(value = "token",required = false) String token){
        // get owner id
        Integer ownerId = Integer.parseInt(JWTUtils.decodeUserId(token));
        return Result.success(transferInvitationList(invitationService.getHistoryInvitationList(ownerId), ownerId));
    }

    public List<InvitationUserDTO> transferInvitationList(List<Invitation> list, Integer CurrentUserId) {
        List<InvitationUserDTO> invitationUserDTOS = new ArrayList<>();
        for (Invitation e: list){
            InvitationUserDTO invitationUserDTO = new InvitationUserDTO();
            User user = null;
            if (CurrentUserId.equals(e.getReceiver())){
                user = userService.getById(e.getSender());
            }else {
                user = userService.getById(e.getReceiver());
            }
            invitationUserDTO.setId(e.getId());
            invitationUserDTO.setUserId(user.getId());
            invitationUserDTO.setBuildTime(e.getBuildTime());
            invitationUserDTO.setNickname(user.getNickname());
            invitationUserDTO.setIcon(user.getIcon());
            invitationUserDTO.setState(e.getState());
            invitationUserDTOS.add(invitationUserDTO);
        }
        return invitationUserDTOS;
    }
}

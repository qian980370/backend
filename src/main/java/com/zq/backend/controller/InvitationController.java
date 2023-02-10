package com.zq.backend.controller;

import com.zq.backend.common.Constant;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Block;
import com.zq.backend.entity.Invitation;
import com.zq.backend.entity.User;
import com.zq.backend.entity.dto.BlockUserDTO;
import com.zq.backend.entity.dto.InvitationUserDTO;
import com.zq.backend.services.BlockServiceImpl;
import com.zq.backend.services.FilesServiceImpl;
import com.zq.backend.services.InvitationServiceImpl;
import com.zq.backend.services.UserServiceImpl;
import com.zq.backend.utils.JWTUtils;
import com.zq.backend.utils.StringBuildUtils;
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
    @Resource
    private FilesServiceImpl filesService;

    @PostMapping("/add")
    public Result buildInvitation(@RequestHeader(value = "token",required = false) String token, @RequestParam Integer targetId){
        // get owner id
        Integer ownerId = Integer.parseInt(JWTUtils.decodeUserId(token));
        // check existing of block user
        if (userService.checkExisting(targetId)){
            return Result.error(Constant.CODE_401, Constant.IMSG_not_exist_user);
        }
        if (blockService.getSpecificBlock(targetId, ownerId).size() != 0){
            return Result.error(Constant.CODE_401, Constant.PMSG_blocked_user);
        }
        if (blockService.getSpecificBlock(ownerId, targetId).size() != 0){
            return Result.error(Constant.CODE_401, Constant.MSG_blocked_user);
        }
        return invitationService.buildInvitation(ownerId, targetId);
    }

    @PutMapping("/update")
    public Result updateInvitation(@RequestHeader(value = "token",required = false) String token, @RequestParam Integer invitationId, @RequestParam Integer state){
        // get owner id
        Integer ownerId = Integer.parseInt(JWTUtils.decodeUserId(token));
        return invitationService.updateInvitation(ownerId, invitationId, state);
    }

    // get all invitations which sent to me and pending
    @GetMapping("/manager/getList")
    public Result getAllList(@RequestHeader(value = "token",required = false) String token){
        // get owner id
        Integer id = Integer.parseInt(JWTUtils.decodeUserId(token));
        if (userService.getById(id).getManager() != 1){
            return Result.error(Constant.CODE_401, Constant.IMSG_bad_authority);
        }
        return Result.success(invitationService.list());
    }

    // get all invitations which sent to me and pending
    @GetMapping("/getList")
    public Result getInvitationList(@RequestHeader(value = "token",required = false) String token){
        // get owner id
        Integer ownerId = Integer.parseInt(JWTUtils.decodeUserId(token));
        return Result.success(transferInvitationList(invitationService.getInvitationList(ownerId), ownerId));
    }

    // get invitations which sent by myself and pending
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

    // get all invitations which has been processed
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
            if (user != null){
                invitationUserDTO.setId(e.getId());
                invitationUserDTO.setUserId(user.getId());
                invitationUserDTO.setBuildTime(e.getBuildTime());
                invitationUserDTO.setNickname(user.getNickname());
                invitationUserDTO.setIcon(user.getIcon());
                invitationUserDTO.setState(e.getState());

                invitationUserDTO.setBirthdate(user.getBirthdate());
                invitationUserDTO.setIntro(user.getIntro());
                // get first photo in album
                List <Integer> idList = StringBuildUtils.splitData(user.getAlbum());
                if (idList.size() > 0){
                    invitationUserDTO.setAlbum(filesService.transferList(idList.get(0).toString()));
                }
                if (e.getState() == 1){
                    invitationUserDTO.setName(user.getName());
                    invitationUserDTO.setWechat(user.getWechat());
                    invitationUserDTO.setTelephone(user.getTelephone());
                }
                invitationUserDTOS.add(invitationUserDTO);
            }

        }
        return invitationUserDTOS;
    }
}

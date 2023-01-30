package com.zq.backend.services;

import cn.hutool.core.date.DateUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zq.backend.common.Constant;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Invitation;
import com.zq.backend.mapper.InvitationMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class InvitationServiceImpl extends ServiceImpl<InvitationMapper, Invitation> implements InvitationServiceInterface {

    @Override
    public Result buildInvitation(Integer sender, Integer receiver) {
        // users cannot invite themselves
        if (sender.equals(receiver)){
            return Result.error(Constant.CODE_401, Constant.IMSG_invalid_target);
        }
        // check Invitation relationship has existed
        if (getSpecificInvitation(sender, receiver).size() != 0){
            return Result.error(Constant.CODE_401, Constant.IMSG_duplicate_request);
        }
        if (getSpecificInvitation(receiver, sender).size() != 0){
            return Result.success(Constant.SMSG_check_invitation);
        }
        // build Invitation
        Invitation invitation = new Invitation();
        invitation.setSender(sender);
        invitation.setReceiver(receiver);
        invitation.setState(0);
        invitation.setBuildTime(DateUtil.date().toString());
        // save Invitation relationship into database
        if(!save(invitation)){
            return Result.error(Constant.CODE_401, Constant.IMSG_invalid_sql_query);
        }
        return Result.success();
    }

    @Override
    public Result updateInvitation(Integer owner, Integer invitationID, Integer updateState) {
        QueryWrapper<Invitation> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id", invitationID);
        List<Invitation> InvitationRelationship = list(queryWrapper);
        if (InvitationRelationship.size() != 1){
            return Result.error(Constant.CODE_401, Constant.IMSG_not_exist_invitation);
        }
        Invitation invitation = InvitationRelationship.get(0);
        if (invitation.getState() != 0 && invitation.getState() != 1){
            return Result.error(Constant.CODE_401, Constant.IMSG_locked_invitation);
        }

        if (updateState == 1 || updateState == 2){ // receiver want accept or refuse invitation
            if (!invitation.getReceiver().equals(owner)){
                return Result.error(Constant.CODE_401, Constant.IMSG_bad_accept_refuse_invitation);
            }
        }else if (updateState == 3){ // sender or receiver want cancel invitation
            if (!invitation.getSender().equals(owner) && invitation.getState() != 1){
                return Result.error(Constant.CODE_401, Constant.IMSG_cancel_invitation);
            }
        }else {
            return Result.error(Constant.CODE_401, Constant.IMSG_invalid_sql_query);
        }

        invitation.setState(updateState);
        updateById(invitation);
        return Result.success();
    }

    @Override
    public List<Invitation> getInvitationList(Integer owner) {
        QueryWrapper<Invitation> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("receiver", owner);
        queryWrapper.eq("state", 0);
        return list(queryWrapper);
    }

    @Override
    public List<Invitation> getMyInvitationList(Integer owner) {
        QueryWrapper<Invitation> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("sender", owner);
        queryWrapper.eq("state", 0);
        return list(queryWrapper);
    }

    public List<Invitation> getAllInvitationList(Integer owner) {
        QueryWrapper<Invitation> queryWrapper = new QueryWrapper<>();
        queryWrapper.and(qe->qe.eq("state", 0).or().eq("state", 1).and(qw->qw.eq("sender", owner).or().eq("receiver", owner)));
        return list(queryWrapper);
    }

    @Override
    public List<Invitation> getSuccessInvitationList(Integer owner) {
        QueryWrapper<Invitation> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("state", 1).and(qw->qw.eq("sender", owner).or().eq("receiver", owner));
        return list(queryWrapper);
    }

    @Override
    public List<Invitation> getHistoryInvitationList(Integer owner) {
        QueryWrapper<Invitation> queryWrapper = new QueryWrapper<>();
        queryWrapper.ne("state", 0).and(qw->qw.eq("sender", owner).or().eq("receiver", owner));
        return list(queryWrapper);
    }

    /**
     * get invitation which state = 0 with input sender and receiver
     * @param sender sender
     * @param receiver receiver
     * @return result
     */
    @Override
    public List<Invitation> getSpecificInvitation(Integer sender, Integer receiver) {
        QueryWrapper<Invitation> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("sender", sender);
        queryWrapper.eq("receiver", receiver);
        queryWrapper.eq("state", 0);
        return list(queryWrapper);
    }

    /**
     * check invitation which state = 1 with input sender and receiver
     * @param sender sender
     * @param receiver receiver
     * @return result
     */
    @Override
    public List<Invitation> checkSpecificSuccessInvitation(Integer sender, Integer receiver) {
        QueryWrapper<Invitation> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("sender", sender);
        queryWrapper.eq("receiver", receiver);
        queryWrapper.eq("state", 1);
        return list(queryWrapper);
    }

    /**
     * get all invitation with input sender and receiver
     * @param sender sender
     * @param receiver receiver
     * @return result
     */
    public List<Invitation> getAllStateSpecificInvitation(Integer sender, Integer receiver) {
        QueryWrapper<Invitation> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("sender", sender);
        queryWrapper.eq("receiver", receiver);
        return list(queryWrapper);
    }

}

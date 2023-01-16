package com.zq.backend.services;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Invitation;
import com.zq.backend.mapper.InvitationMapper;

public class InvitationImpl extends ServiceImpl<InvitationMapper, Invitation> implements InvitationServiceInterface {

    @Override
    public Result buildInvitation(Integer sender, Integer receiver) {
        return null;
    }

    @Override
    public Result acceptInvitation(Integer owner, Integer invitationID) {
        return null;
    }

    @Override
    public Result refuseInvitation(Integer owner, Integer invitationID) {
        return null;
    }

    @Override
    public Result cancelInvitation(Integer owner, Integer invitationID) {
        return null;
    }
}

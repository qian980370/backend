package com.zq.backend.services;


import com.baomidou.mybatisplus.extension.service.IService;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Invitation;

public interface InvitationServiceInterface extends IService<Invitation> {
    Result buildInvitation(Integer sender, Integer receiver);
    Result acceptInvitation(Integer owner, Integer invitationID);
    Result refuseInvitation(Integer owner, Integer invitationID);
    Result cancelInvitation(Integer owner, Integer invitationID);
}

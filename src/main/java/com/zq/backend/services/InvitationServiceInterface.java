package com.zq.backend.services;


import com.baomidou.mybatisplus.extension.service.IService;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Follow;
import com.zq.backend.entity.Invitation;

import java.util.List;

public interface InvitationServiceInterface extends IService<Invitation> {
    Result buildInvitation(Integer sender, Integer receiver);
    Result updateInvitation(Integer owner, Integer invitationID, Integer updateState);
    List<Invitation> getInvitationList(Integer owner);
    List<Invitation> getHistoryInvitationList(Integer owner);
    List<Invitation> getSpecificInvitation(Integer sender, Integer receiver);
    List<Invitation> getMyInvitationList(Integer owner);
    List<Invitation> getSuccessInvitationList(Integer owner);
    List<Invitation> checkSpecificSuccessInvitation(Integer sender, Integer receiver);
}

package com.zq.backend.services;

import com.baomidou.mybatisplus.extension.service.IService;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Block;
import com.zq.backend.entity.Invitation;
import com.zq.backend.entity.User;
import com.zq.backend.entity.dto.*;

import java.util.List;

public interface UserServiceInterface extends IService<User> {
    Result updateUser(User user);
    Result updatePassword(UpdatePasswordDTO passwordDTO, String token);
    Result register(User user0);
    Result login(UserLoginDTO userLoginDTO);
    boolean checkExisting(Integer userId);
    List<UserCandidateDTO> getRandomUser(Integer userId, Integer gender, List<Block> blockList, List<Invitation> invitationList, String query);
    UserDetailDTO getUserDetail(Integer targetUserId, Boolean isInvited);
    String inputVerify(User user);
}

package com.zq.backend.services;

import com.baomidou.mybatisplus.extension.service.IService;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Block;
import com.zq.backend.entity.Invitation;
import com.zq.backend.entity.User;
import com.zq.backend.entity.dto.UserCandidateDTO;
import com.zq.backend.entity.dto.UserDTO;
import com.zq.backend.entity.dto.UserDetailDTO;
import com.zq.backend.entity.dto.UserLoginDTO;

import java.util.List;

public interface UserServiceInterface extends IService<User> {
    Result updateUser(User user);
    Result register(User user0);
    Result login(UserLoginDTO userLoginDTO);
    boolean checkExisting(Integer userId);
    List<UserCandidateDTO> getRandomUser(Integer userId, Integer gender, List<Block> blockList, List<Invitation> invitationList, String query);
    UserDetailDTO getUserDetail(Integer targetUserId, Boolean isInvited);
    String inputVerify(User user);
}

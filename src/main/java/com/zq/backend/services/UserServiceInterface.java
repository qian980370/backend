package com.zq.backend.services;

import com.baomidou.mybatisplus.extension.service.IService;
import com.zq.backend.common.Result;
import com.zq.backend.entity.User;
import com.zq.backend.entity.dto.UserDTO;
import com.zq.backend.entity.dto.UserLoginDTO;

public interface UserServiceInterface extends IService<User> {
    Result updateUser(User user);
    Result register(User user0);
    Result login(UserLoginDTO userLoginDTO);
    boolean checkExisting(Integer userId);
}

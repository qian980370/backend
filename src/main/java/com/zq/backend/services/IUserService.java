package com.zq.backend.services;

import com.baomidou.mybatisplus.extension.service.IService;
import com.zq.backend.common.Result;
import com.zq.backend.entity.User;
import com.zq.backend.entity.dto.UserDTO;

public interface IUserService extends IService<User> {
    boolean saveUser(User user);

    Result login(UserDTO userDTO);
}

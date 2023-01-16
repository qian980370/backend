package com.zq.backend.services;

import com.baomidou.mybatisplus.extension.service.IService;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Follow;

public interface FollowServiceInterface extends IService<Follow> {
    Result buildFollow(Integer owner, Integer targetUser);
    Result cancelFollow(Integer owner, Integer BlockID);
}

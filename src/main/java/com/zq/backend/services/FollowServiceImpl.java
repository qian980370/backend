package com.zq.backend.services;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Follow;
import com.zq.backend.mapper.FollowMapper;

public class FollowServiceImpl extends ServiceImpl<FollowMapper, Follow> implements FollowServiceInterface {
    @Override
    public Result buildFollow(Integer owner, Integer targetUser) {
        return null;
    }

    @Override
    public Result cancelFollow(Integer owner, Integer BlockID) {
        return null;
    }
}

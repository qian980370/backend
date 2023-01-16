package com.zq.backend.services;

import com.baomidou.mybatisplus.extension.service.IService;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Block;
import com.zq.backend.entity.Follow;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface FollowServiceInterface extends IService<Follow> {
    Result buildFollow(Integer follower, Integer targetUser);
    Result cancelFollow(Integer follower, Integer BlockID);
    List<Follow> getFollowList(Integer follower);
    List<Follow> getSpecificFollow(Integer follower, Integer targetUser);
}

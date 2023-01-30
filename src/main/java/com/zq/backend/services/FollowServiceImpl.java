package com.zq.backend.services;

import cn.hutool.core.date.DateUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zq.backend.common.Constant;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Block;
import com.zq.backend.entity.Follow;
import com.zq.backend.mapper.FollowMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class FollowServiceImpl extends ServiceImpl<FollowMapper, Follow> implements FollowServiceInterface {

    @Override
    public Result buildFollow(Integer follower, Integer targetUser) {
        // users cannot follow themselves
        if (follower.equals(targetUser)){
            return Result.error(Constant.CODE_401, Constant.IMSG_invalid_target);
        }
        // check follow relationship has existed
        if (getSpecificFollow(follower, targetUser).size() != 0){
            return Result.error(Constant.CODE_401, Constant.IMSG_duplicate_request);
        }

        // build follow
        Follow follow = new Follow();
        follow.setFollower(follower);
        follow.setTargetUser(targetUser);
        follow.setFollowingTime(DateUtil.date().toString());
        // save follow relationship into database
        if(!save(follow)){
            return Result.error(Constant.CODE_401, Constant.IMSG_invalid_sql_query);
        }
        return Result.success();
    }

    @Override
    public Result cancelFollow(Integer follower, Integer followId) {
        QueryWrapper<Follow> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id", followId);
        List<Follow> followRelationship = list(queryWrapper);
        if (followRelationship.size() != 1){
            return Result.error(Constant.CODE_401, Constant.IMSG_not_exist_follow);
        }
        if (!followRelationship.get(0).getFollower().equals(follower)){
            return Result.error(Constant.CODE_401, Constant.PMSG_cancel_follow);
        }
        removeById(followId);

        return Result.success();
    }

    @Override
    public List<Follow> getFollowList(Integer follower) {
        QueryWrapper<Follow> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("follower", follower);
        return list(queryWrapper);
    }

    @Override
    public List<Follow> getSpecificFollow(Integer follower, Integer targetUser) {
        QueryWrapper<Follow> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("follower", follower);
        queryWrapper.eq("target_user", targetUser);
        return list(queryWrapper);
    }
}

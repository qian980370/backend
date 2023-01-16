package com.zq.backend.services;

import cn.hutool.core.date.DateUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zq.backend.common.Constant;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Block;
import com.zq.backend.mapper.BlockMapper;

import java.util.List;

public class BlockServiceImpl extends ServiceImpl<BlockMapper, Block> implements BlockServiceInterface {
    @Override
    public Result buildBlock(Integer owner, Integer targetUser) {
        Block block = new Block();
        block.setOwner(owner);
        block.setTarget_user(targetUser);
        block.setBlocking_time(DateUtil.date());
        return Result.success();
    }

    @Override
    public Result cancelBlock(Integer owner, Integer blockID) {
        QueryWrapper<Block> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id", blockID);
        List<Block> blockRelationship = list(queryWrapper);
        if (blockRelationship.size() != 1){
            return Result.error(Constant.CODE_401, "not exist block relationship");
        }
        if (!blockRelationship.get(0).getOwner().equals(owner)){
            return Result.error(Constant.CODE_401, "block relationship not belong to current user");
        }
        removeById(blockID);

        return Result.success();
    }

    @Override
    public List<Block> getBlockList(Integer owner) {
        QueryWrapper<Block> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("owner", owner);
        return list(queryWrapper);
    }
}

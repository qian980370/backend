package com.zq.backend.services;

import cn.hutool.core.date.DateUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zq.backend.common.Constant;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Block;
import com.zq.backend.entity.Follow;
import com.zq.backend.entity.Invitation;
import com.zq.backend.entity.User;
import com.zq.backend.entity.dto.BlockUserDTO;
import com.zq.backend.mapper.BlockMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class BlockServiceImpl extends ServiceImpl<BlockMapper, Block> implements BlockServiceInterface {

    @Override
    public Result buildBlock(Integer owner, Integer targetUser) {
        // users cannot block themselves
        if (owner.equals(targetUser)){
            return Result.error(Constant.CODE_401, Constant.IMSG_invalid_target);
        }
        // check block relationship has existed
        if (getSpecificBlock(owner, targetUser).size() != 0 || getSpecificBlock(targetUser, owner).size() != 0 ){
            return Result.error(Constant.CODE_401, Constant.IMSG_duplicate_request);
        }
        // build block
        Block block = new Block();
        block.setOwner(owner);
        block.setTargetUser(targetUser);
        block.setBlockingTime(DateUtil.date().toString());
        // save block relationship into database
        if(!save(block)){
            return Result.error(Constant.CODE_401, Constant.IMSG_invalid_sql_query);
        }
        return Result.success();
    }

    @Override
    public Result cancelBlock(Integer owner, Integer blockId) {
        QueryWrapper<Block> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id", blockId);
        List<Block> blockRelationship = list(queryWrapper);
        if (blockRelationship.size() != 1){
            return Result.error(Constant.CODE_401, Constant.IMSG_not_exist_block);
        }
        if (!blockRelationship.get(0).getOwner().equals(owner)){
            return Result.error(Constant.CODE_401, Constant.PMSG_cancel_block);
        }
        removeById(blockId);
        return Result.success();
    }

    @Override
    public List<Block> getBlockList(Integer owner) {
        QueryWrapper<Block> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("owner", owner);
        return list(queryWrapper);
    }

    @Override
    public List<Block> getSpecificBlock(Integer owner, Integer targetUser) {
        QueryWrapper<Block> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("owner", owner);
        queryWrapper.eq("target_user", targetUser);
        return list(queryWrapper);
    }

    public List<Block> getTwoWayBlockList(Integer owner) {
        QueryWrapper<Block> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("owner", owner);
        queryWrapper.or().eq("target_user", owner);
        return list(queryWrapper);
    }
}

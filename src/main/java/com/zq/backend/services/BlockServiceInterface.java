package com.zq.backend.services;

import com.baomidou.mybatisplus.extension.service.IService;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Block;
import com.zq.backend.entity.dto.BlockUserDTO;

import java.util.List;

public interface BlockServiceInterface extends IService<Block> {
    Result buildBlock(Integer owner, Integer targetUser);
    Result cancelBlock(Integer owner, Integer blockID);
    List<Block> getBlockList(Integer owner);
    List<Block> getSpecificBlock(Integer owner, Integer targetUser);
}

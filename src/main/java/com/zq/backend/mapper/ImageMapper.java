package com.zq.backend.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zq.backend.entity.Hobbies;
import com.zq.backend.entity.Images;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ImageMapper extends BaseMapper<Images> {
}

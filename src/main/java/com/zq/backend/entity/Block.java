package com.zq.backend.entity;

import cn.hutool.core.date.DateTime;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("block")
public class Block {
    @TableId(type = IdType.AUTO)
    private Integer id;
    private Integer owner;
    private Integer targetUser;
    private String blockingTime;
}

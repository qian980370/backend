package com.zq.backend.entity;

import cn.hutool.core.date.DateTime;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("invitation")
public class Invitation {
    @TableId(type = IdType.AUTO)
    private Integer id;
    private Integer sender;
    private Integer receiver;
    private DateTime build_time;
}

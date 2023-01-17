package com.zq.backend.entity;

import cn.hutool.core.date.DateTime;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("nationality")
public class Nationality {
    @TableId(type = IdType.AUTO)
    private Integer id;
    private Integer code;
    private String fullname;
    private String shortname;
    private DateTime createTime;
    private DateTime updateTime;
}

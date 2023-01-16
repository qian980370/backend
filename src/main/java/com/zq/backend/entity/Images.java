package com.zq.backend.entity;

import cn.hutool.core.date.DateTime;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("images")
public class Images {
    @TableId(type = IdType.AUTO)
    private Integer id;
    private String name;
    private String path;
    private DateTime upload_time;
}

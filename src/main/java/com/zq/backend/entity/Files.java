package com.zq.backend.entity;

import cn.hutool.core.date.DateTime;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("files")
public class Files {
    @TableId(type = IdType.AUTO)
    private Integer id;
    private String name;
    private String url;
    private String type;
    private Long size;
    private String md5;
    private String uploadTime;
    private String isDelete;
    private String enable;
}

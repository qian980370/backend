package com.zq.backend.entity.dto;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("hobbies")
public class HobbiesDTO {
    @TableId(type = IdType.AUTO)
    private Integer id;
    private String name;
    private String intro;
    private String icon;
    private boolean duplicate;
}

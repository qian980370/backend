package com.zq.backend.entity;

import cn.hutool.core.date.DateTime;
import lombok.Data;

@Data
public class Block {
    private Integer id;
    private Integer owner;
    private Integer target_user;
    private DateTime blocking_time;
}

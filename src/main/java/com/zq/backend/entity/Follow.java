package com.zq.backend.entity;

import cn.hutool.core.date.DateTime;
import lombok.Data;

@Data
public class Follow {
    private Integer id;
    private Integer follower;
    private Integer target_user;
    private DateTime following_time;
}

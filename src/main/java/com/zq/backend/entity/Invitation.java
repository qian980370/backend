package com.zq.backend.entity;

import cn.hutool.core.date.DateTime;
import lombok.Data;

@Data
public class Invitation {
    private Integer id;
    private Integer sender;
    private Integer receiver;
    private DateTime build_time;
}

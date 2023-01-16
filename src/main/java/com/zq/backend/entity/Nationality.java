package com.zq.backend.entity;

import cn.hutool.core.date.DateTime;
import lombok.Data;

@Data
public class Nationality {
    private Integer id;
    private Integer code;
    private String fullname;
    private String shortname;
    private DateTime create_time;
    private DateTime update_time;
}

package com.zq.backend.entity;

import cn.hutool.core.date.DateTime;
import lombok.Data;

@Data
public class Images {
    private Integer id;
    private String name;
    private String path;
    private DateTime upload_time;
}

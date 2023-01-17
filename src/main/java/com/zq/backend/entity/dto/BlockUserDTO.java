package com.zq.backend.entity.dto;

import lombok.Data;

@Data
public class BlockUserDTO {
    private Integer id;
    private Integer userId;
    private String nickname;
    private String icon;
    private String blockingTime;
}

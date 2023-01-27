package com.zq.backend.entity.dto;

import io.swagger.models.auth.In;
import lombok.Data;

@Data
public class InvitationUserDTO {
    private Integer id;
    private Integer userId;
    private String nickname;
    private String icon;
    private String buildTime;
    private Integer state;

    private String album;
    private String birthdate;
    private String intro;

    private String name;
    private Long telephone;
    private String wechat;
}

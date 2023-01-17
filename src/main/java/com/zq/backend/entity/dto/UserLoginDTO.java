package com.zq.backend.entity.dto;

import lombok.Data;

@Data
public class UserLoginDTO {
    private Integer telephone;
    private String password;
    private String token;
    private String nickname;
    private String icon;
}

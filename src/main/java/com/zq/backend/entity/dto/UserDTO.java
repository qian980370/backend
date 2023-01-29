package com.zq.backend.entity.dto;

import lombok.Data;

/**
 * receive request form front end
 */
@Data
public class UserDTO {
    private Integer id;
    private Long telephone;
    private String token;
    private String nickname;
    private String icon;
}

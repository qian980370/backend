package com.zq.backend.entity.dto;

import lombok.Data;

/**
 * receive request form front end
 */
@Data
public class UserDTO {
    private Integer telephone;
    private String password;
    private String token;
}

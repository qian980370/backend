package com.zq.backend.entity.dto;

import lombok.Data;

/**
 * receive update password request from front end
 */
@Data
public class UpdatePasswordDTO {
    private Integer id;
    private String oldPassword;
    private String newPassword;
}

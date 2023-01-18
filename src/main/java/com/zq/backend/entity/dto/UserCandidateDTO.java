package com.zq.backend.entity.dto;

import lombok.Data;

@Data
public class UserCandidateDTO {
    private Integer id;
    private String nickname;
    private String icon;
    private Integer height;
    private Integer weight;
    private String intro;
    private Integer smoking;
    private Integer drinking;
    private String album;
}

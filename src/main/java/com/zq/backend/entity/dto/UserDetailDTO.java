package com.zq.backend.entity.dto;

import com.zq.backend.entity.Hobbies;
import lombok.Data;

import java.util.List;


@Data
public class UserDetailDTO {
    private Integer id;
    private String name;
    private String idcard;
    private Long telephone;
    private String wechat;
    private String nickname;
    private String icon;
    private Integer nationality;
    private String birthdate;
    private Integer gender;
    private Integer height;
    private Integer weight;
    private Integer married;
    private String intro;
    private String hobby;
    private List<Hobbies> hobbies;
    private String address;
    private String education;
    private Integer income;
    private String property;
    private Integer smoking;
    private Integer drinking;
    private String albums;
    private String album;
    private String mtime;
}

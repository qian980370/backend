package com.zq.backend.entity;

import lombok.Data;

import java.sql.Date;

@Data
public class User {
    private Integer id;
    private String password;
    private String name;
    private String idcard;
    private Integer telephone;
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
    private String address;
    private String education;
    private Integer income;
    private String property;
    private Integer smoking;
    private Integer drinking;
    private String album;
    private String register_date;
    private String last_login_time;
    private Integer membership;
    private String pause;
}

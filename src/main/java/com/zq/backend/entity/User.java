package com.zq.backend.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;


@Data
@TableName("user")
public class User {

    @TableId(type = IdType.AUTO)
    private Integer id;
    private String password;
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
    private String address;
    private String education;
    private Integer income;
    private String property;
    private Integer smoking;
    private Integer drinking;
    private String mtime;
    private String album;
    private String registerDate;
    private String lastLoginTime;
    private String membership;
    private String pause;
    private Integer manager;
}

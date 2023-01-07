package com.zq.backend.mapper;

import com.zq.backend.entity.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface UserMapper {
    //execute code in block
    @Select("select * from user")
    List<User> findAll();

    @Insert("INSERT into user(id, password, name, idcard, telephone, wechat, nickname, icon, nationality, birthdate, gender, height, weight, married, intro, hobby, address, education, income, property, smoking, drinking, album, register_date, last_login_time, membership, pause) VALUES (#{id}, #{password}, #{name}, #{idcard}, #{telephone}, #{wechat}, #{nickname}, #{icon}, #{nationality}, #{birthdate}, #{gender}, #{height}, #{weight}, #{married}, #{intro}, #{hobby}, #{address}, #{education}, #{income}, #{property}, #{smoking}, #{drinking}, #{album}, #{register_date}, #{last_login_time}, #{membership}, #{pause})")
    int insert(User user);

    int update(User user);
}

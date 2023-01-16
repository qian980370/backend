package com.zq.backend.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zq.backend.entity.User;


public interface UserMapper extends BaseMapper<User> {
    //下面的是mybatis手动声明的方法，在mybatis plus的BaseMapper中已经构造，注释掉以防止重载,同时不要忘记注释xml的mapper
//    // execute code in block
//    @Select("select * from user")
//    List<User> findAll();
//
//    // insert a new user
//    int insert(User user);
//
//    // update personal details
//    int update(User user);
//
//    // delete a user
//    @Delete("delete from user where id = #{id}")
//    Integer deleteById(@Param("id") Integer id);
//
//    // 分页查询
//    // select * from user limit 0,5 从0开始每次选取5个，包含0； (pageNum - 1) * pageSize
//    @Select("select * from user limit #{pageNum}, #{pageSize}")
//    List<User> selectPage(Integer pageNum, Integer pageSize);
//
//    // select total amount of users
//    @Select("select count(*) from user")
//    Integer selectTotalPage();
}

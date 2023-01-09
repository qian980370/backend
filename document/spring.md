# 新建spring项目

## spring initializer

maven

java 8 

jdk 18



## dependencies

lombok

jdbc api

mybaitis api

mysql driver

spring web





## 依赖卡住

setting - build - maven - runnner

```
archetypeCatalog = internal
```

## 数据库

有些（富文本 rich text）特殊字符 utf8 不能存储所以选择

utf8mb4

配置连接数据库

```
# properties
# set port
server.port=9090

# build database connection
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.datasource.url=jdbc:mysql://localhost:3306/appointment?serverTimeZone=GMT%2b8
spring.datasource.username=root
spring.datasource.password=15853198730
```

```
# yml
server:
  port: 9090
spring:
  datasource:
    driver-class-name: com.mysql.cj.jdbc.Driver
    url: jdbc:mysql://erictest.mysql.database.azure.com:3306/wisdom_connect_database?useSSL=true
    username: eric
    password: Zzq980730

```

## ctrl + alt + o 去除无用包

## 手动扫描mapper

```
@MapperScan("com.zq.backend.mapper")
```

# mybatis xml

mybatis 动态sql

```
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
  "http://mybatis.org/dtd/mybatis-3-config.dtd">
<mapper namespace="">
</mapper>

```

```
id, password, name, idcard, telephone, wechat, nickname, icon, nationality, birthdate,gender, height,weight, married, intro, hobby, address, education, income, property, smoking, drinking, album, register_date, last_login_time, membership, pause
```

## 不要忘记加@RequestBody

# Postman template

![image-20230108113504113](C:\Users\Eric\AppData\Roaming\Typora\typora-user-images\image-20230108113504113.png)	

```
# 
{
    "password": "123", 
    "name": "321", 
    "idcard": "311", 
    "telephone":123, 
    "wechat": "123", 
    "nickname": "123", 
    "icon": "12331", 
    "nationality":12, 
    "birthdate": "1997-05-06",
    "gender":1, 
    "height":123,
    "weight":123, 
    "married":1, 
    "intro": "123", 
    "hobby": "13", 
    "address": "123", 
    "education": "123", 
    "income":12, 
    "property": "123", 
    "smoking":1, 
    "drinking":1, 
    "album": "", 
    "register_date": "2023-01-05", 
    "last_login_time": "2023-01-05", 
    "membership": "12", 
    "pause": null
}
```

# Cross Origin issue

```
@Configuration
public class CorsConfig {

    // 当前跨域请求最大有效时长。这里默认1天
    private static final long MAX_AGE = 24 * 60 * 60;

    @Bean
    public CorsFilter corsFilter() {
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        CorsConfiguration corsConfiguration = new CorsConfiguration();
        corsConfiguration.addAllowedOrigin("*"); // 1 设置访问源地址
        corsConfiguration.addAllowedHeader("*"); // 2 设置访问源请求头
        corsConfiguration.addAllowedMethod("*"); // 3 设置访问源请求方法
        corsConfiguration.setMaxAge(MAX_AGE);
        source.registerCorsConfiguration("/**", corsConfiguration); // 4 对接口配置跨域设置
        return new CorsFilter(source);
    }
}
```

## CORS

CORS 是一个W3C标准，全称是"跨域资源共享"（Cross-origin resource sharing）

它允许浏览器向跨源服务器，发出XMLHttpRequest请求，从而克服了AJAX只能同源使用的限制。

CORS 需要浏览器和服务器同时支持。目前，所有浏览器都支持该功能，IE浏览器不能低于IE10。

浏览器端：

目前，所有浏览器都支持该功能（IE10以下不行）。整个CORS通信过程，都是浏览器自动完成，不需要用户参与。

服务端：

CORS通信与Ajax没有任何差别，因此你不需要改变以前的业务逻辑。只不过，浏览器会在请求中携带一些头信息，我们需要以此判断是否允许其跨域，然后在响应头中加入一些信息即可。这一般通过过滤器完成即可。


## @JsonIgnore 

在entity类中注释可隐藏部分数据

# MybatisPlus

开启log

```
mybatis-plus:
  configuration:
    log-impl: org.apache.ibatis.logging.stdout.StdOutImpl
```



## dependencies

```
<dependency>
    <groupId>com.baomidou</groupId>
    <artifactId>mybatis-plus-boot-starter</artifactId>
    <version>3.5.1</version>
</dependency>
```

框架会根据实体类去查询表名，如果表名与实体类不同（实体类会自动小写化）

不一致需要申明tablename

```
package com.zq.backend.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.sql.Date;

@Data
@TableName("user")
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

```

有关id需不需要指定

id在实体类与库内名称不一致时，或表内命名不是id，是需要指定，比如id在库内名为uid，或实体类为uid

```
@TableId(type = IdType.AUTO)
private Integer id;

@TableField(value = "test_url")
private String url;
```

## 查询中添加默认值(defaultValue = "")

# Swagger

```
<dependency>
    <groupId>io.springfox</groupId>
    <artifactId>springfox-boot-starter</artifactId>
    <version>3.0.0</version>
</dependency>
```

报错则在springboot添加@EnableWebMvc

http://localhost:9090/swagger-ui/index.html

## DTO

dto类是接受前段请求的特殊实体类，它并不会创建额外的不需要的参数，比如登录只需要手机号和密码，则剔除其余不必要的user实体类的参数

## hutool

做字符串等一系列校验
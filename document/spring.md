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


# 新建spring项目

## put mapping post mapping

**幂等性：HTTP/1.1中的定义是指一次和多次请求某一个资源对于资源本身应该具有同样的结果（网络超时等问题除外）。也就是说，其任意多次执行对资源本身所产生的影响均与一次执行的影响相同**

幂等不仅仅只是一次（或多次）请求对资源没有副作用（比如查询数据库操作，没有增删改，因此没有对数据库有任何影响）。
幂等还包括第一次请求的时候对资源产生了副作用，但是以后的多次请求都不会再对资源产生副作用。
幂等关注的是以后的多次请求是否对资源产生的副作用，而不关注结果。

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

utf8mb4_unicode_ci

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

# JSON 请求

?pageNum=1&pageSize=2&nickname=

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



### 拦截器swagger

当拦截器拦截swagger时，打开浏览器insepect swagger页面的网络资源请求头

```
.excludePathPatterns("/**/login", "/**/register", "/swagger-resources/**","/swagger-ui/**", "/v3/**", "/error", "/v2/**");
```

![image-20230115123840340](E:\appointment\backend\document\image-20230115123840340.png)

# DTO

dto类是接受前段请求的特殊实体类，它并不会创建额外的不需要的参数，比如登录只需要手机号和密码，则剔除其余不必要的user实体类的参数

# hutool

做字符串等一系列校验

# Could not autowire. No beans of

解决3：将@Autowired改为@Resource
两个注解的区别是一个是@Autowired是Spring，@Resource是J2EE的
使用@Resource能减少Spring耦合度
@AutoWried按by type自动注入，而@Resource默认按byName自动注入。
@Resource的查询注入顺序是，去Bean中查找Name，如果查不到就去查Class，其次再从属性去查找，如果我们定义的类中有相同的

# Redis

https://blog.csdn.net/qq_41997592/article/details/122866809

```
在目录下启动cmd
输入 redis-server.exe redis.windows.conf
```

```
安装redis
docker pull redis

启动
// 创建配置文件
mkdir -p /mydata/redis/conf
touch /mydata/redis/conf/redis.conf

docker run -p 6379:6379 --name redis \
--restart=always \
-v /mydata/redis/data:/data \
-v /mydata/redis/conf/redis.conf:/etc/redis/redis.conf \
-d redis redis-server /etc/redis/redis.conf

redis-cli控制台:
docker exec -it redis redis-cli

redis开启持久化，修改配置文件redis.conf，启动aof持久化，输入：
appendonly yes

docker启动mysqsl、redis自动启动：
docker update mysql --restart=always
docker update redis --restart=always
```





# 数据库踩坑

## 端口3306被占用

```
netstat -ano //查看所有服务运行端口，记录队友进程id
taskkill /pid xxx -t -f  //xxx为进程id
sc delete MySql //删除服务
```

# hobby

## getHobbyList

```
getHobbyList会获取当前用户的所有爱好，需求token
```

### LIST获取相同元素

```java
package Basic.list;

import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

public class Java8Test {
    public static void main(String[] args) {
        // 老师集合
        List<Teacher> teachers = Arrays.asList(
                new Teacher(1L, "张三"),
                new Teacher(2L, "李四"),
                new Teacher(3L, "王五"),
                new Teacher(4L, "赵六"));

        // 学生集合
        List<Student> students = Arrays.asList(
                new Student(5L, "张三"),
                new Student(6L, "李四"),
                new Student(7L, "小红"),
                new Student(8L, "小明"));

        // 求同时出现在老师集合和学生集合中的人数,name相同即视为同一个人
        int size = teachers.stream()
                .map(t ->
                        students.stream()
                                .filter(s -> Objects.nonNull(t.getName())
                                        && Objects.nonNull(s.getName())
                                        && Objects.equals(t.getName(), s.getName()))
                                .findAny()
                                .orElse(null))
                .filter(Objects::nonNull)
                .collect(Collectors.toList())
                .size();

        // 求同时出现在老师集合和学生集合中人的name集合,name相同即视为同一个人
        List<String> names = teachers.stream()
                .map(t ->
                        students.stream()
                                .filter(s -> Objects.nonNull(t.getName())
                                        && Objects.nonNull(s.getName())
                                        && Objects.equals(t.getName(), s.getName()))
                                .findAny()
                                .orElse(null))
                .filter(Objects::nonNull)
                .map(r -> r.getName())
                .collect(Collectors.toList());

        System.out.println("相同的人数:" + size);
        System.out.println("相同的人姓名集合:" + names);
    }
}


class Student{
    long id;
    String name;

    public Student(long id, String name) {
        this.id = id;
        this.name = name;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
class Teacher{
    long id;
    String name;

    public Teacher(long id, String name) {
        this.id = id;
        this.name = name;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}

```

## fetch

先是 promise

promise调用json response

response包含data

![image-20230117141101940](C:\Users\Eric\AppData\Roaming\Typora\typora-user-images\image-20230117141101940.png)	

再次.data可以获取目标数据集

## 分布式ID生成算法——雪花算法

https://blog.csdn.net/knock_me/article/details/127415351

eric张zq

# Xshell

https://xshell.en.softonic.com/

120.79.241.117

root

Zzq980307db

## jdk

```
free -h //查看内存
df -h //查看存储
top //查看运行软件

解压：
tar -zxvf jdk-8u291-linux-x64.tar.gz
mv jdk1.8.0_291 jdk1.8

//移动
mv jdk1.8 /usr/local/jdk1.8
cd /usr/local/
//修改配置文件
vim /etc/profile

//添加配置
export JAVA_HOME=/usr/local/jdk1.8 export CLASSPATH=$:CLASSPATH:$JAVA_HOME/lib/ export PATH=$PATH:$JAVA_HOME/bin
a/i insert
esc
:wq
cat /etc/profile //浏览文件
//刷新配置
source /etc/profile
```

## docker

https://www.runoob.com/docker/centos-docker-install.html

http://www.tuohang.net/article/240659.html

```                    
sudo yum install docker-ce docker-ce-cli containerd.io

//启动
systemctl start docker
systemctl restart docker / service docker restart

Docker 需要用户具有 sudo 权限，为了避免每次命令都输入sudo，可以把用户加入 Docker 用户组（官方文档）。
sudo usermod -aG docker $USER

卸载docker
sudo yum remove docker-ce docker-ce-cli containerd.io

sudo rm -rf /var/lib/docker

#查看镜像
docker images

#查看进程
docker ps

docker exec redis ps -ef

开机自启
systemctl enable docker


镜像加速器
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://nwtv5r3f.mirror.aliyuncs.com"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docke
```

## mysql

```
docker pull mysql:5.7

docker run -p 3306:3306 --name mysql \
-v /mydata/mysql/log:/var/log/mysql \
-v /mydata/mysql/data:/var/lib/mysql \
-v /mydata/mysql/conf:/etc/mysql \
-e MYSQL_ROOT_PASSWORD=root \
-d mysql:5.7

docker run -p 3308:3306 --name mysql \
-e MYSQL_ROOT_PASSWORD=root \
-d mysql:5.7


docker run -p 3308:3306 --name mysql3308 --restart=always \
-v /mydata/mysql3308/log:/var/log/mysql \
-v /mydata/mysql3308/data:/var/lib/mysql \
-v /mydata/mysql3308/conf:/etc/mysql \
-e MYSQL_ROOT_PASSWORD=root \
-d mysql:5.7


docker run -p 3306:3306 --name mysql -e MYSQL_ROOT_PASSWORD=15853198730CQC -d mysql:5.7

--name 容器名字
-p 3308:3306 物理机端口：容器内部端口
-e 运行参数 初始化 root 用户的密码
-d 后台运行 mysq5.7 镜像名字加标签

然后修改权限：
// 进入mysql容器：
docker exec -it 4ff8ac9a1b8b /bin/bash
// 登录mysql：
mysql -uroot -p15853198730CQC
// 修改权限：
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'ChatP@ss7633';
或者：ALTER USER 'root'@'%' IDENTIFIED BY 'ChatP@ss7633';
flush privileges;

mysql配置文件:  vim /mydata/mysql/conf/my.cnf
[client]
default-character-set=utf8

[mysql]
default-character-set=utf8

[mysqld]
init_connect='SET collation_ connection = utf8_ unicode_ci'
init_connect='SET NAMES utf8'
character-set-server=utf8
collation-server=utf8_unicode_ci
skip-character-set-client-handshake
skip-name-resolve

接下来就可以用navicat连服务器
```



   



​                              



## 打包

```
mvn clean package -DskipTests

java -jar backend-0.0.1-SNAPSHOT.jar

后台启动
nohup java -jar backend-0.0.1-SNAPSHOT.jar &
// 检查后台日志
tail -500f nohup.out

// 检查进程
ps -ef | grep java
// kill 进程
kill -9 {进程号}
```

​                              

​            

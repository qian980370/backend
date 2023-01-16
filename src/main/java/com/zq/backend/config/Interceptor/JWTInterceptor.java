package com.zq.backend.config.Interceptor;

import cn.hutool.core.util.StrUtil;
import com.zq.backend.common.Constant;
import com.zq.backend.entity.User;
import com.zq.backend.exception.ServiceException;
import com.zq.backend.services.UserServiceInterface;
import com.zq.backend.utils.JWTUtils;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Component
public class JWTInterceptor implements HandlerInterceptor {

    @Resource
    private UserServiceInterface userService;

    @Resource
    private RedisTemplate redisTemplate;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
        String token = request.getHeader("token");

        // if handler not mapping to method
        if(!(handler instanceof HandlerMethod)){
            return true;
        }
        // check empty token issue
        if (StrUtil.isBlank(token)){
            throw new ServiceException(Constant.CODE_401, "empty token");
        }
        // check user in database
        String userId = JWTUtils.decodeUserId(token);
        User user = userService.getById(userId);
        if (user == null){
            throw new ServiceException(Constant.CODE_401, "user not exists");
        }

        // check token from redis cache
        String checkToken = (String) redisTemplate.opsForValue().get("token" + user.getTelephone());
        if (!token.equals(checkToken)){
            throw new ServiceException(Constant.CODE_401, "this account has been logged in to another device. Please log in again or change the password");
        }

        return JWTUtils.verify(token, user.getPassword());
    }
}

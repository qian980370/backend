package com.zq.backend.config.Interceptor;

import cn.hutool.core.util.StrUtil;
import com.zq.backend.common.Constant;
import com.zq.backend.entity.User;
import com.zq.backend.exception.ServiceException;
import com.zq.backend.services.IUserService;
import com.zq.backend.utils.JWTUtils;
import org.springframework.stereotype.Component;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Component
public class JWTInterceptor implements HandlerInterceptor {

    @Resource
    private IUserService userService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
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
        return JWTUtils.verify(token, user.getPassword());
    }
}

package com.zq.backend.utils;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTCreator;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTDecodeException;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.zq.backend.common.Constant;
import com.zq.backend.entity.User;
import com.zq.backend.exception.ServiceException;
import org.apache.commons.lang.StringUtils;
import com.auth0.jwt.JWTVerifier;

import java.util.Calendar;


public class JWTUtils {


    /**
     * 获取token
     * @param u user
     * @return token
     */
    public static String getToken(User u) {
        Calendar instance = Calendar.getInstance();
        //默认令牌过期时间300 minutes
        instance.add(Calendar.HOUR, 240);

        JWTCreator.Builder builder = JWT.create();
        builder.withAudience(u.getId().toString())
                .withClaim("telephone", u.getTelephone());

        return builder.withExpiresAt(instance.getTime())
                .sign(Algorithm.HMAC256(u.getPassword()));
    }

    /**
     * decode user id
     */
    public static String decodeUserId(String token){
        if(StringUtils.isEmpty(token)){
            throw new ServiceException(Constant.CODE_401, "token不能为空");
        }
        String userId;
        //verify
        try {
            userId = JWT.decode(token).getAudience().get(0);
        }catch (JWTDecodeException je){
            throw new ServiceException(Constant.CODE_401, "token invalid");
        }

        return userId;

    }

    /**
     * decode user id
     */
    public static boolean verify(String token, String password){
        //verify
        JWTVerifier jwtVerifier = JWT.require(Algorithm.HMAC256(password)).build();
        try {
            jwtVerifier.verify(token);
        }catch (JWTVerificationException je){
            throw new ServiceException(Constant.CODE_401, "token invalid");
        }
        return true;
    }
}

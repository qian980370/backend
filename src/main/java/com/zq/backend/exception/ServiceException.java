package com.zq.backend.exception;

import lombok.Getter;

/**
 * self defined service exception
 */
@Getter
public class ServiceException extends RuntimeException{
    private String code;

    public ServiceException(String code, String msg){
        super(msg); // runtime exception own msg, we dont need to self-def it again
    }
}

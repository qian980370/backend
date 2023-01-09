package com.zq.backend.common;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


/**
 * 返回接口
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Result {
    private String code;
    private String message;
    private Object data;

    public static Result success(){
        return new Result(Constant.CODE_200, "", null);
    }

    public static Result success(Object data){
        return new Result(Constant.CODE_200, "", data);
    }

    public static Result error(){
        return new Result(Constant.CODE_500, "", null);
    }

    public static Result error(String code, String msg){
        return new Result(code, msg, null);
    }

}

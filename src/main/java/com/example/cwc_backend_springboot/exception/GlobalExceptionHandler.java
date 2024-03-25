package com.example.cwc_backend_springboot.exception;

import cn.hutool.log.Log;
import cn.hutool.log.LogFactory;
import com.example.cwc_backend_springboot.common.Result;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@ControllerAdvice(basePackages="com.example.cwc_backend_springboot.controller")
public class GlobalExceptionHandler {

    private static final Log log = LogFactory.get();


    //统一异常处理@ExceptionHandler,主要用于Exception
    @ExceptionHandler(Exception.class)
    @ResponseBody//返回json串
    public Result error(Exception e){
        log.error("异常信息：",e);
        return Result.error();
    }

    @ExceptionHandler(CustomException.class)
    @ResponseBody//return json object
    public Result customError(CustomException e){
        return Result.error(e.getMsg());
    }
}

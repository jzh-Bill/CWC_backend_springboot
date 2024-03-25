package com.example.cwc_backend_springboot.common;

public class Result {
    private int status;
    private String msg;
    private Object data;

    private Result(Object data) {
        this.data = data;
    }

    public Result() {
    }

    public static Result success() {
        Result result = new Result();
        result.setStatus(0);
        result.setMsg("Request Succeed");
        return result;
    }

    public static Result success(Object data) {
        Result result = success();
        result.setData(data);
        return result;
    }

    public static Result error() {
        Result result = new Result();
        result.setStatus(1);
        result.setMsg("Request Failed");
        return result;
    }

    public static Result error(String msg) {
        Result result = new Result();
        result.setStatus(1);
        result.setMsg(msg);
        return result;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}

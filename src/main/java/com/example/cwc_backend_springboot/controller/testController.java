package com.example.cwc_backend_springboot.controller;

import com.example.cwc_backend_springboot.common.Result;
import com.example.cwc_backend_springboot.service.UserService;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class testController {

    @Resource
    UserService userService;
    @GetMapping("/")
    public String hello() {
        return "running!";
    }

    @GetMapping(value="testdb", produces = "application/json")
    public Result testDb() {
        Result result = new Result();
        result.setStatus(0);
        result.setMsg("Success logged in");
        result.setData(userService.getUsers());
        return result;
    }
}

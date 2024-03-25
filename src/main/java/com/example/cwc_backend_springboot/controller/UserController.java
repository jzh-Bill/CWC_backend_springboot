package com.example.cwc_backend_springboot.controller;

import com.example.cwc_backend_springboot.common.Result;
import com.example.cwc_backend_springboot.entity.Account;
import com.example.cwc_backend_springboot.entity.Token;
import com.example.cwc_backend_springboot.entity.User;
import com.example.cwc_backend_springboot.mapper.UserMapper;
import com.example.cwc_backend_springboot.service.UserService;
import jakarta.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

//@RequestMapping("/user") //This is the prefix of URL when client trying to get

@RequestMapping("/") //This is the prefix of URL when client trying to get
@RestController
@CrossOrigin
public class UserController {

    @Resource UserService userService;

    @PostMapping(value = "login", produces = "application/json")
    public Result login(@RequestBody Account account) {
        Result result = new Result();

        if (userService.login(account) == true) {
            // When user is found, we return a token which servers as an indicator to show the password is matched.
            Token token = userService.getToken(account.getUsername());

            // We set the result(or response) status to be 0 to make frontend aware that user is found.
            result.setStatus(0);
            result.setMsg("Success logged in");
            result.setData(token);
        }else {
            // set status code to be 1 indicating no such a user or password does not match.
            result.setStatus(1);
            result.setMsg("Username or Password is incorrect");
        }
        return result;
    }
}


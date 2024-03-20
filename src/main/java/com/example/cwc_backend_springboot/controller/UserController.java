package com.example.cwc_backend_springboot.controller;

import com.example.cwc_backend_springboot.entity.User;
import com.example.cwc_backend_springboot.mapper.UserMapper;
import com.example.cwc_backend_springboot.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequestMapping("/user") //This is the prefix of URL when client trying to get
@RestController
public class UserController {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserService userService;

    @PostMapping
    public Integer save(@RequestBody User user) { // @RequestBody will convert the json object to java object
        // Creating and Updating could be done with same URL and function
        return userService.save(user);
    }

    @GetMapping("/") // Thus, the complete URL is /user/
    // GetMapping is used to get data from database
    public List<User> index() {
        return userMapper.findAll();
    }
}

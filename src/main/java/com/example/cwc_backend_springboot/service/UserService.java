package com.example.cwc_backend_springboot.service;

import com.example.cwc_backend_springboot.entity.Account;
import com.example.cwc_backend_springboot.entity.Token;
import com.example.cwc_backend_springboot.entity.User;
import com.example.cwc_backend_springboot.exception.CustomException;
import jakarta.annotation.Resource;
import com.example.cwc_backend_springboot.mapper.UserMapper;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Resource
    private UserMapper userMapper;
    public Boolean login(Account account) {

        User dbUser = userMapper.selectByUsername(account.getUsername());
        if (dbUser == null) { // means the user does not exist
            System.out.println("In the error 1");
            throw new CustomException("Username or Password is incorrect");
        }
        if (!account.getPassword().equals(dbUser.getPassword())) { // means the user's password is wrong
            System.out.println("In the error 2");
            throw new CustomException("Username or Password is incorrect");
        }
        return true;
    }

    public Token getToken(String username) {
        Token token = userMapper.findTokenByUsername(username);
        return token;
    }

    public List<User> getUsers() {
        List<User> users = userMapper.getUsers();
        return users;
    }
}

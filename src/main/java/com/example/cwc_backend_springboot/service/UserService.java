package com.example.cwc_backend_springboot.service;

import com.example.cwc_backend_springboot.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import com.example.cwc_backend_springboot.mapper.UserMapper;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserMapper userMapper;
    public int save(User user) {
        if (user.getId() == null) { // means the user has no id
            return userMapper.insert(user);
        } else { // otherwise, the user has the  id
            return userMapper.update(user);
        }
    }
}

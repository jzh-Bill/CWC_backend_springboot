package com.example.cwc_backend_springboot.service;

import com.example.cwc_backend_springboot.entity.Account;
import com.example.cwc_backend_springboot.entity.Token;
import com.example.cwc_backend_springboot.entity.User;
import com.example.cwc_backend_springboot.entity.UserInfo;
import com.example.cwc_backend_springboot.exception.CustomException;
import jakarta.annotation.Resource;
import com.example.cwc_backend_springboot.mapper.UserMapper;
import org.apache.ibatis.jdbc.Null;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Resource
    private UserMapper userMapper;

    public Boolean login(Account account) {
        User dbUser = userMapper.selectByUsername(account.getUsername());
        if (dbUser == null) { // means the user does not exist
            throw new CustomException("Username or Password is incorrect");
        }
        if (!account.getPassword().equals(dbUser.getPassword())) { // means the user's password is wrong
            throw new CustomException("Username or Password is incorrect");
        }
        return true;
    }

    public Token getToken(String username) {
        Token token = userMapper.findTokenByUsername(username);
        return token;
    }

    public UserInfo getUserInfo(String username) {
        UserInfo userinfo = userMapper.findUserInfoByUsername(username);
        return userinfo;
    }

    public List<User> getUsers() {
        List<User> users = userMapper.getAllUsers();
        return users;
    }

    public void deleteUserByID(int targetUserID) {
        userMapper.deleteUserByID(targetUserID);
    }

    public void editUserByID(UserInfo userInfo){
        int userID = userInfo.getId();
        String newDescription = userInfo.getDescription();
        String newname = userInfo.getName();
        String newUserRole = userInfo.getRole();

        if (newDescription != null) { userMapper.updateUserDescriptionByID(userID, newDescription); };
        if (newname != null) { userMapper.updateRealNameByID(userID, newname); };
        if (newUserRole != null) { userMapper.updateUserRoleByID(userID, newUserRole); };
    }
}

package com.example.cwc_backend_springboot.mapper;

import com.example.cwc_backend_springboot.entity.Token;
import com.example.cwc_backend_springboot.entity.User;
import com.example.cwc_backend_springboot.entity.UserInfo;
import org.apache.ibatis.annotations.*;

import java.util.List;
@Mapper
public interface UserMapper {
    //    @Select("select * from sys_users")
//    List<User> findAll();
//
//    @Insert("INSERT into sys_users(username, password, nickname, email, address) VALUE (#{username}, #{password} , #{nickname}, #{email}, #{address})")
//    int insert(User user);
//
//    @Update("UPDATE sys_users set username = #{username}, password = #{password}, nickname = #{nickname}, email = #{email}, address = #{address}" +
//            " where id = #{id}") // You may create a bug if you have no space between keyword "where" and #{address}
//    int update(User user);

    @Select("select * from users where username = #{username}")
    User selectByUsername(String username);

    @Select("select username, id from users where username = #{username}")
    Token findTokenByUsername(String username);

    @Select("select * from users limit 3")
    List<User> getUsers();

    @Select("select id, username, role, name, description, token from users where username = #{username}")
    UserInfo findUserInfoByUsername(String username);

    @Select("select id, name, role, description from users where role != 'admin'")
    List<User> getAllUsers();

    @Delete("delete from users where id = #{targetUserID};")
    void deleteUserByID(int targetUserID);

    @Update("UPDATE users SET description = #{newDescription} WHERE id = #{userID}")
    void updateUserDescriptionByID(int userID, String newDescription);

    @Update("UPDATE users SET name = #{newUsername} WHERE id = #{userID}")
    void updateRealNameByID(int userID, String newUsername);

    @Update("UPDATE users SET role = #{newRole} WHERE id = #{userID}")
    void updateUserRoleByID(int userID, String newRole);
}

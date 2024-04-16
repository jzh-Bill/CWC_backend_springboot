package com.example.cwc_backend_springboot.mapper;

import com.example.cwc_backend_springboot.entity.Token;
import com.example.cwc_backend_springboot.entity.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;
@Mapper
public interface UserMapper {
    @Select("select * from sys_users")
    List<User> findAll();

    @Insert("INSERT into sys_users(username, password, nickname, email, address) VALUE (#{username}, #{password} , #{nickname}, #{email}, #{address})")
    int insert(User user);

    @Update("UPDATE sys_users set username = #{username}, password = #{password}, nickname = #{nickname}, email = #{email}, address = #{address}" +
            " where id = #{id}") // You may create a bug if you have no space between keyword "where" and #{address}
    int update(User user);

    @Select("select * from users where username = #{username}")
    User selectByUsername(String username);

    @Select("select token from users where username = #{username}")
    Token findTokenByUsername(String username);

    @Select("select * from users")
    List<User> getUsers();
}

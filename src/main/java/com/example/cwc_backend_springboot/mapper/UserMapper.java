package com.example.cwc_backend_springboot.mapper;

import com.example.cwc_backend_springboot.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;
@Mapper
public interface UserMapper {
    @Select("select * from sys_users")
    List<User> findAll();

}

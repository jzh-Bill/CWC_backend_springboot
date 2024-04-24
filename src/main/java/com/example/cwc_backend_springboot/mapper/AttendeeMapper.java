package com.example.cwc_backend_springboot.mapper;

import com.example.cwc_backend_springboot.entity.Attendee;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface AttendeeMapper {

    @Select("select * from attendee")
    List<Attendee> getAttendees();
}

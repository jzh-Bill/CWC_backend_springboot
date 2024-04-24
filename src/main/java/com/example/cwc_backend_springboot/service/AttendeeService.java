package com.example.cwc_backend_springboot.service;

import com.example.cwc_backend_springboot.entity.Attendee;
import com.example.cwc_backend_springboot.mapper.AttendeeMapper;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class AttendeeService {
    @Resource
    private AttendeeMapper attendeeMapper;

    public List<Attendee> getAttendees() {
        List<Attendee> attendees = attendeeMapper.getAttendees();
        return attendees;
    }
}
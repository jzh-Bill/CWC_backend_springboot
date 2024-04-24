package com.example.cwc_backend_springboot.controller;

import com.example.cwc_backend_springboot.common.Result;
import com.example.cwc_backend_springboot.service.AttendeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/attendees")
public class AttendeeController {
    private final AttendeeService attendeeService;

    @Autowired
    public AttendeeController(AttendeeService attendeeService) {
        this.attendeeService = attendeeService;
    }

    @GetMapping(value = "list", produces = "application/json")
    public Result getAllUsers() {
        return Result.success(attendeeService.getAttendees());
    }
}

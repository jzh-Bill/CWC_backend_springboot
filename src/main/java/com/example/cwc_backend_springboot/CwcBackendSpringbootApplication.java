package com.example.cwc_backend_springboot;

import com.example.cwc_backend_springboot.entity.User;
import com.example.cwc_backend_springboot.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@SpringBootApplication
public class CwcBackendSpringbootApplication {

    public static void main(String[] args) {

        SpringApplication.run(CwcBackendSpringbootApplication.class, args);
    }
}

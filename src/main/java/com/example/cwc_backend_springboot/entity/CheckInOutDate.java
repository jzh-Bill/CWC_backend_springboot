package com.example.cwc_backend_springboot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CheckInOutDate {
    private String check_in_date;
    private String check_out_date;
}

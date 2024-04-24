package com.example.cwc_backend_springboot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Attendee {

    private int person_id;
    private String cwc_id;
    private String first_name;
    private String last_name;
    private String family_id;
    private String middle_name;
    private String chinese_name;
    private boolean christian_flag;
    private boolean single;
    private char gender;
    private int age;
    private String phone;
    private String email;
    private String fax;
    private String language_preference;
    private boolean worship_group;
    private String worship_date;
    private boolean worship_morning;
    private boolean worship_afternoon;
    private boolean general_affair;
    private boolean book_room;
    private boolean dining_room;
    private boolean tape_recording;
    private boolean english_translation;
    private boolean cantonese_translation;
    private boolean nursery;
    private boolean time_keeper;
    private boolean registration;
    private boolean counselor;
    private boolean speaker;
    private boolean cwc_worker;
    private boolean mission_member;
    private boolean children_coworker;
    private boolean winter_coworker;
    private String others;
    private boolean self_pay;
    private boolean late_guarantee;
    private String credit_card_type;
    private String credit_card_number;
    private String credit_card_expiration;
    private Timestamp arrival_date;
    private Timestamp leave_date;
    private String counselor_id;
    private String title;
    private String relationship;
    private String counselee_name;
    private String counselee_city;
    private String attendee_type;
    private boolean att_lc_ft;
    private boolean att_lc_pt;
    private boolean active;

    // Constructors, getters, and setters
}

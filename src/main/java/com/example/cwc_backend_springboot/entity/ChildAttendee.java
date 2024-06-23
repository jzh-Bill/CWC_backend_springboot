package com.example.cwc_backend_springboot.entity;

import java.util.List;

// In both child and adult attendee entites, they don't have their home address, state, and cities.
// Because they are already saved in when their cwc_id is confirmed which is saved in the attendee_family table
// And we need to join the two tables when we need to find out their home address
public class ChildAttendee {
    public String cwc_id;
    public int family_id;
    public String phone;
    public String email;
    public String church_state;
    public String church_city;
    public String church_BSG_name;
    public String secondary_phone;

    public String relationship;
    public String first_name;
    public String last_name;
    public String gender;
    public String age;
    public boolean is_believer;
    public String chinese_name;
    public String special_needs;


    public boolean is_self_pay;
    public boolean is_kc_resident;
    public boolean is_fulltime;
    public String check_in_date;
    public String check_out_date;
    public List<MealLogeSequences> mealLodgeInfo;

    public String getCwc_id() {
        return cwc_id;
    }

    public void setCwc_id(String cwc_id) {
        this.cwc_id = cwc_id;
    }

    public int getFamily_id() {
        return family_id;
    }

    public void setFamily_id(int family_id) {
        this.family_id = family_id;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getChurch_state() {
        return church_state;
    }

    public void setChurch_state(String church_state) {
        this.church_state = church_state;
    }

    public String getChurch_city() {
        return church_city;
    }

    public void setChurch_city(String church_city) {
        this.church_city = church_city;
    }

    public String getChurch_BSG_name() {
        return church_BSG_name;
    }

    public void setChurch_BSG_name(String church_BSG_name) {
        this.church_BSG_name = church_BSG_name;
    }

    public String getSecondary_phone() {
        return secondary_phone;
    }

    public void setSecondary_phone(String secondary_phone) {
        this.secondary_phone = secondary_phone;
    }

    public String getRelationship() {
        return relationship;
    }

    public void setRelationship(String relationship) {
        this.relationship = relationship;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public boolean isIs_believer() {
        return is_believer;
    }

    public void setIs_believer(boolean is_believer) {
        this.is_believer = is_believer;
    }

    public String getChinese_name() {
        return chinese_name;
    }

    public void setChinese_name(String chinese_name) {
        this.chinese_name = chinese_name;
    }

    public String getSpecial_needs() {
        return special_needs;
    }

    public void setSpecial_needs(String special_needs) {
        this.special_needs = special_needs;
    }

    public boolean isIs_self_pay() {
        return is_self_pay;
    }

    public void setIs_self_pay(boolean is_self_pay) {
        this.is_self_pay = is_self_pay;
    }

    public boolean isIs_kc_resident() {
        return is_kc_resident;
    }

    public void setIs_kc_resident(boolean is_kc_resident) {
        this.is_kc_resident = is_kc_resident;
    }

    public boolean isIs_fulltime() {
        return is_fulltime;
    }

    public void setIs_fulltime(boolean is_fulltime) {
        this.is_fulltime = is_fulltime;
    }

    public String getCheck_in_date() {
        return check_in_date;
    }

    public void setCheck_in_date(String check_in_date) {
        this.check_in_date = check_in_date;
    }

    public String getCheck_out_date() {
        return check_out_date;
    }

    public void setCheck_out_date(String check_out_date) {
        this.check_out_date = check_out_date;
    }

    public List<MealLogeSequences> getMealLodgeInfo() {
        return mealLodgeInfo;
    }

    public void setMealLodgeInfo(List<MealLogeSequences> mealLodgeInfo) {
        this.mealLodgeInfo = mealLodgeInfo;
    }

    @Override
    public String toString() {
        return "ChildAttendee{" +
                "cwc_id='" + cwc_id + '\'' +
                ", family_id=" + family_id +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", church_state='" + church_state + '\'' +
                ", church_city='" + church_city + '\'' +
                ", church_BSG_name='" + church_BSG_name + '\'' +
                ", secondary_phone='" + secondary_phone + '\'' +
                ", relationship='" + relationship + '\'' +
                ", first_name='" + first_name + '\'' +
                ", last_name='" + last_name + '\'' +
                ", gender='" + gender + '\'' +
                ", age='" + age + '\'' +
                ", is_believer=" + is_believer +
                ", chinese_name='" + chinese_name + '\'' +
                ", special_needs='" + special_needs + '\'' +
                ", is_self_pay=" + is_self_pay +
                ", is_kc_resident=" + is_kc_resident +
                ", is_fulltime=" + is_fulltime +
                ", check_in_date='" + check_in_date + '\'' +
                ", check_out_date='" + check_out_date + '\'' +
                ", mealLodgeInfo=" + mealLodgeInfo +
                '}';
    }
}

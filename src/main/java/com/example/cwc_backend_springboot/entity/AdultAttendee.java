package com.example.cwc_backend_springboot.entity;

import java.util.List;

// In both child and adult attendee entites, they don't have their home address, state, and cities.
// Because they are already saved in when their cwc_id is confirmed which is saved in the attendee_family table
// And we need to join the two tables when we need to find out their home address
public class AdultAttendee {
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
    public boolean is_counselor;
    public String counselee_name;
    public String counselee_city;
    public String translation_request;
    public String workshop_day;
    public String workshop_am;
    public String workshop_pm;
    public boolean is_regular_attendee;
    public boolean is_speaker;
    public boolean is_cwc_coworker;
    public boolean is_mission_member;
    public boolean is_children_worker;
    public boolean is_winter_coworker;

    public boolean is_self_pay;
    public boolean is_kc_resident;
    public boolean is_fulltime;
    public String check_in_date;
    public String check_out_date;
    public List<MealLogeSequences> mealLodgeInfo;

    public void setMealLodgeInfo(List<MealLogeSequences> mealLodgeInfo) {
        this.mealLodgeInfo = mealLodgeInfo;
    }

    public String getCwc_id() {
        return cwc_id;
    }

    public int getFamily_id() {
        return family_id;
    }

    public void setFamily_id(int family_id) {
        this.family_id = family_id;
    }

    public void setCwc_id(String cwc_id) {
        this.cwc_id = cwc_id;
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

    public boolean isIs_counselor() {
        return is_counselor;
    }

    public void setIs_counselor(boolean is_counselor) {
        this.is_counselor = is_counselor;
    }

    public String getCounselee_name() {
        return counselee_name;
    }

    public void setCounselee_name(String counselee_name) {
        this.counselee_name = counselee_name;
    }

    public String getCounselee_city() {
        return counselee_city;
    }

    public void setCounselee_city(String counselee_city) {
        this.counselee_city = counselee_city;
    }

    public String getTranslation_request() {
        return translation_request;
    }

    public void setTranslation_request(String translation_request) {
        this.translation_request = translation_request;
    }

    public String getWorkshop_day() {
        return workshop_day;
    }

    public void setWorkshop_day(String workshop_day) {
        this.workshop_day = workshop_day;
    }

    public String getWorkshop_am() {
        return workshop_am;
    }

    public void setWorkshop_am(String workshop_am) {
        this.workshop_am = workshop_am;
    }

    public String getWorkshop_pm() {
        return workshop_pm;
    }

    public void setWorkshop_pm(String workshop_pm) {
        this.workshop_pm = workshop_pm;
    }

    public boolean isIs_regular_attendee() {
        return is_regular_attendee;
    }

    public void setIs_regular_attendee(boolean is_regular_attendee) {
        this.is_regular_attendee = is_regular_attendee;
    }

    public boolean isIs_speaker() {
        return is_speaker;
    }

    public void setIs_speaker(boolean is_speaker) {
        this.is_speaker = is_speaker;
    }

    public boolean isIs_cwc_coworker() {
        return is_cwc_coworker;
    }

    public void setIs_cwc_coworker(boolean is_cwc_coworker) {
        this.is_cwc_coworker = is_cwc_coworker;
    }

    public boolean isIs_mission_member() {
        return is_mission_member;
    }

    public void setIs_mission_member(boolean is_mission_member) {
        this.is_mission_member = is_mission_member;
    }

    public boolean isIs_children_worker() {
        return is_children_worker;
    }

    public void setIs_children_worker(boolean is_children_worker) {
        this.is_children_worker = is_children_worker;
    }

    public boolean isIs_winter_coworker() {
        return is_winter_coworker;
    }

    public void setIs_winter_coworker(boolean is_winter_coworker) {
        this.is_winter_coworker = is_winter_coworker;
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

    public Object getMealLodgeInfo() {
        return mealLodgeInfo;
    }


    @Override
    public String toString() {
        return "AdultAttendee{" +
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
                ", is_counselor=" + is_counselor +
                ", counselee_name='" + counselee_name + '\'' +
                ", counselee_city='" + counselee_city + '\'' +
                ", translation_request='" + translation_request + '\'' +
                ", workshop_day='" + workshop_day + '\'' +
                ", workshop_am='" + workshop_am + '\'' +
                ", workshop_pm='" + workshop_pm + '\'' +
                ", is_regular_attendee=" + is_regular_attendee +
                ", is_speaker=" + is_speaker +
                ", is_cwc_coworker=" + is_cwc_coworker +
                ", is_mission_member=" + is_mission_member +
                ", is_children_worker=" + is_children_worker +
                ", is_winter_coworker=" + is_winter_coworker +
                ", is_self_pay=" + is_self_pay +
                ", is_kc_resident=" + is_kc_resident +
                ", is_fulltime=" + is_fulltime +
                ", check_in_date='" + check_in_date + '\'' +
                ", check_out_date='" + check_out_date + '\'' +
                ", mealLodgeInfo=" + mealLodgeInfo +
                '}';
    }
}

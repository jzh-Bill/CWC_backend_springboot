package com.example.cwc_backend_springboot.mapper;

import com.example.cwc_backend_springboot.entity.*;
import org.apache.ibatis.annotations.*;

import java.util.List;
@Mapper
public interface RegistrationMapper {
    @Select("SELECT CONCAT(state, ',', city, ',', name) AS church_info_string FROM church_info")
    public List<String> getAllChurchInfoString();

    @Select("SELECT date, breakfast, lunch, dinner, lodge FROM meal_lodge_plan")
    List<MealLodgeInfo> getMealLodgeInfoList();

    @Select("SELECT cwc_id FROM cwcid_archive where cwc_id  = #{id}")
    List<String> getCWCIDList(String id);

    @Insert("INSERT INTO attendee_family (confirmation_id, cwc_id, address, city, state, zip_code) VALUES(#{confirmationNumber}, #{familyInfo.cwc_id}, #{familyInfo.address}, #{familyInfo.city}, #{familyInfo.state}, #{familyInfo.zip_code})")
    public void confirmFamilyWithCWCID(FamilyInfo familyInfo, String confirmationNumber);


    @Select("SELECT family_id FROM attendee_family WHERE cwc_id = #{cwcID}")
    public int getFamilyIdByCwcID(String cwcID);

    @Insert("INSERT INTO cwcid_archive (cwc_id, family_id, email,  phone, first_name, last_name) VALUES (#{familyInfo.cwc_id},#{family_id},#{familyInfo.email},#{familyInfo.phone},#{familyInfo.first_name},#{familyInfo.last_name})")
    public void saveCwcID(int family_id, FamilyInfo familyInfo);

    @Insert("INSERT INTO attendee (cwc_id,  family_id,  phone, email, church_state, church_city, church_BSG_name, secondary_phone, relationship, first_name, last_name, gender, age, is_believer, chinese_name, is_counselor, counselee_name, counselee_city, translation_request, workshop_day, workshop_am, workshop_pm, is_regular_attendee, is_speaker, is_cwc_coworker, is_mission_member, is_children_worker, is_winter_coworker, is_self_pay, is_kc_resident, is_fulltime, check_in_date, check_out_date) " +
            "VALUES (#{cwc_id},#{family_id}, #{phone}, #{email}, #{church_state}, #{church_city}, #{church_BSG_name}, #{secondary_phone}, #{relationship}, #{first_name}, #{last_name}, #{gender}, #{age}, #{is_believer}, #{chinese_name}, #{is_counselor}, #{counselee_name}, #{counselee_city}, #{translation_request}, #{workshop_day}, #{workshop_am}, #{workshop_pm}, #{is_regular_attendee}, #{is_speaker}, #{is_cwc_coworker}, #{is_mission_member}, #{is_children_worker}, #{is_winter_coworker}, #{is_self_pay},#{is_kc_resident}, #{is_fulltime},#{check_in_date},#{check_out_date})")
    public void saveAdultAttendeeBasicInfo(AdultAttendee adultAttendee);

    @Insert("INSERT INTO attendee (cwc_id,  family_id,  phone, email, church_state, church_city, church_BSG_name, secondary_phone, relationship, first_name, last_name, gender, age, is_believer, chinese_name, is_self_pay, is_kc_resident, is_fulltime, check_in_date, check_out_date) " +
            "VALUES (#{cwc_id},#{family_id}, #{phone}, #{email}, #{church_state}, #{church_city}, #{church_BSG_name}, #{secondary_phone}, #{relationship}, #{first_name}, #{last_name}, #{gender}, #{age}, #{is_believer}, #{chinese_name}, #{is_self_pay},#{is_kc_resident}, #{is_fulltime},#{check_in_date},#{check_out_date})")
    public void saveChildrenAttendeeBasicInfo(ChildAttendee childAttendee);

    @Select("SELECT person_id FROM attendee WHERE cwc_id = #{cwcID} AND first_name = #{first_name}")
    public int getPersonIDbyNameNCWCID(String cwcID, String first_name);

    @Insert("INSERT INTO meal_lodge_info (person_id, date, breakfast, lunch, dinner, lodge) " +
            "VALUES (#{person_id}, #{date}, #{breakfast}, #{lunch}, #{dinner}, #{lodge}) ")
    public void saveAttendeeMealLodgeIndo(int person_id, String date, boolean breakfast, boolean lunch, boolean dinner, boolean lodge);
}

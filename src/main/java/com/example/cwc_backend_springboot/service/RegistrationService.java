package com.example.cwc_backend_springboot.service;

import com.example.cwc_backend_springboot.entity.*;
import java.lang.reflect.Field;
import com.example.cwc_backend_springboot.exception.CustomException;
import com.example.cwc_backend_springboot.mapper.RegistrationMapper;
import jakarta.annotation.Resource;
import com.example.cwc_backend_springboot.mapper.UserMapper;
import org.apache.ibatis.jdbc.Null;
import org.springframework.stereotype.Service;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Locale;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.lang.reflect.Modifier;

@Service
public class RegistrationService {
    @Resource
    private RegistrationMapper registrationMapper;

    // This function will convert such date format (2022-12-31) to (Dec. 31st, 2022)
    // and the purpose was to make the front-end shows nicer without causing confusion
    public static String formatDateTime(String dateTimeStr) {
        // 解析日期时间字符串
        LocalDateTime dateTime = LocalDateTime.parse(dateTimeStr, DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));

        // 自定义格式化
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MMM_d'th'_yyyy", Locale.ENGLISH);
        String formattedDate = dateTime.format(formatter);

        // 替换日期后缀，适用于英语规则
        return formattedDate.replaceAll("1\\dth", "$0").replaceAll("(\\d+)(st|nd|rd|th)", "$1$2");
    }

    // This function will convert (Dec. 31st, 2022) to (2022-12-31) in order to save the date in mysql
    public static String convertDateFormatToDB(String inputDate) {
        // Define the output format
        DateTimeFormatter outputFormatter = DateTimeFormatter.ISO_LOCAL_DATE;

        try {
            // Remove the ordinal suffix before parsing
            String processedDate = inputDate.replaceAll("(?<=\\d)(st|nd|rd|th)", "");
            // Define the input format without ordinal suffixes
            DateTimeFormatter inputFormatter = DateTimeFormatter.ofPattern("MMM_dd_yyyy", Locale.US);

            // Parse the cleaned-up date string
            LocalDate date = LocalDate.parse(processedDate, inputFormatter);
            // Format it to YYYY-MM-DD
            return date.format(outputFormatter);
        } catch (DateTimeParseException e) {
            // Handle the case where the input date is not in the expected format
            System.err.println("Invalid date format: " + e.getMessage());
            return null;
        }
    }

    public List<String> getAllChurchInfo() {
        List<String> churchInfoString = registrationMapper.getAllChurchInfoString();
        return churchInfoString;
    }

    public Object getMeallodgeList() {
        List<MealLodgeInfo> mealLodgeInfoList = registrationMapper.getMealLodgeInfoList();

        for (MealLodgeInfo mealLodgeInfo : mealLodgeInfoList) {
            String originalDate = mealLodgeInfo.getDate();
            String newDateFormate = formatDateTime(originalDate);
            mealLodgeInfo.setDate(newDateFormate);
        }
        return mealLodgeInfoList;
    }

    // This function will return false if it has not found a CWC ID, return true if it does
    public Boolean CWCIDExists(String id) {
        List<String> cwcIDList = registrationMapper.getCWCIDList(id);
        if (cwcIDList.size() > 0) {
            return false;
        } else {
            return true;
        }
    }

    // This function will generate a confirmation number and save the family information with the CWCID in attendee_family table
    public String confirmFamilyWithCWCID (FamilyInfo familyInfo) {
        // Get local time of US middle east time zone
        LocalDateTime now = LocalDateTime.now();
        // Define the confirmation format by using the local time
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
        // Assign the number
        String confirmationNumber = now.format(formatter);
        registrationMapper.confirmFamilyWithCWCID(familyInfo, confirmationNumber);

        return confirmationNumber;
    }
    public int getFamilyId(String cwcID) {
        int familyID = registrationMapper.getFamilyIdByCwcID(cwcID);
        return familyID;
    }

    public void saveCWCID(int family_id, FamilyInfo familyInfo){
        registrationMapper.saveCwcID(family_id, familyInfo);
    }

    public void saveAdultAttendee(AdultAttendee adultAttendee) {
        // first we save the basic information of the attendee
        registrationMapper.saveAdultAttendeeBasicInfo(adultAttendee);

        // now we start to save the meal and lodge information of the attendee
        // since the information is stored inside the object we just pull them out and store them
        List<MealLogeSequences> mealLodgeList = adultAttendee.mealLodgeInfo;
        String cwc_id = adultAttendee.cwc_id;
        String first_name = adultAttendee.first_name;

        int current_person_id = registrationMapper.getPersonIDbyNameNCWCID(cwc_id, first_name);

        for (MealLogeSequences mealLodge : mealLodgeList) {
            String date = convertDateFormatToDB(mealLodge.getDate());
            // the information about breakfast eg: ("11111") , mean breakfast, lunch, dinner, and lodge respectively. 1 means YES, o means NO
            String sequence = mealLodge.getMealAndLodgeSequence(); // the length of sequence is fixed size 4
            boolean breakfast = sequence.charAt(0) == '1'? true : false;
            boolean lunch = sequence.charAt(1)  == '1'? true : false;
            boolean dinner = sequence.charAt(2) ==  '1'? true : false;
            boolean lodge = sequence.charAt(3) == '1'? true : false;

            registrationMapper.saveAttendeeMealLodgeIndo(current_person_id, date, breakfast, lunch, dinner, lodge);
        }
        System.out.println(mealLodgeList);
    }

    public void saveChildrenAttendee(ChildAttendee childAttendee) {
        // first we save the basic information of the attendee
        registrationMapper.saveChildrenAttendeeBasicInfo(childAttendee);

        // now we start to save the meal and lodge information of the attendee
        // since the information is stored inside the object we just pull them out and store them
        List<MealLogeSequences> mealLodgeList = childAttendee.mealLodgeInfo;
        String cwc_id = childAttendee.cwc_id;
        String first_name = childAttendee.first_name;

        int current_person_id = registrationMapper.getPersonIDbyNameNCWCID(cwc_id, first_name);

        for (MealLogeSequences mealLodge : mealLodgeList) {
            String date = convertDateFormatToDB(mealLodge.getDate());
            // the information about breakfast eg: ("11111") , mean breakfast, lunch, dinner, and lodge respectively. 1 means YES, o means NO
            String sequence = mealLodge.getMealAndLodgeSequence(); // the length of sequence is fixed size 4
            boolean breakfast = sequence.charAt(0) == '1'? true : false;
            boolean lunch = sequence.charAt(1)  == '1'? true : false;
            boolean dinner = sequence.charAt(2) ==  '1'? true : false;
            boolean lodge = sequence.charAt(3) == '1'? true : false;

            registrationMapper.saveAttendeeMealLodgeIndo(current_person_id, date, breakfast, lunch, dinner, lodge);
        }
        System.out.println(mealLodgeList);
    }
}

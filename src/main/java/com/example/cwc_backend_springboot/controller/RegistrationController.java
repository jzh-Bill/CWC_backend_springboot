package com.example.cwc_backend_springboot.controller;

import com.example.cwc_backend_springboot.common.Result;
import com.example.cwc_backend_springboot.entity.*;
import com.example.cwc_backend_springboot.mapper.UserMapper;
import com.example.cwc_backend_springboot.service.RegistrationService;
import com.example.cwc_backend_springboot.service.UserService;
import jakarta.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;
@RequestMapping("/") //This is the prefix of URL when client trying to get
@RestController
@CrossOrigin
public class RegistrationController {

    @Resource
    RegistrationService registrationService;

    @GetMapping(value = "registration/churchList", produces = "application/json")
    public Result churchList() {
        return Result.success(registrationService.getAllChurchInfo());
    }

    @GetMapping(value = "registration/mealLodgePlanList", produces = "application/json")
    public Result meallodgeList() {
        return Result.success(registrationService.getMeallodgeList());
    }

    @PostMapping (value = "registration/checkCWCID", produces = "application/json")
    public Result checkCWCID(@RequestBody Map<String, Object> requestData) {

        String targetCWCID = (String)requestData.get("id");

        Boolean res = registrationService.CWCIDExists(targetCWCID);
        if (res == true) {
            return Result.success(0);
        } else {
            // already existed a CWC ID
            return Result.success(1);
        }
    }

    // When confirm the CWC ID you are actually confirm the whole family
    @PostMapping (value = "registration/confirmCWCID", produces = "application/json")
    public Result confirmCWCID(@RequestBody FamilyInfo familyInfo) {

        String targetCWCID = familyInfo.getCwc_id();

        Boolean res = registrationService.CWCIDExists(targetCWCID);
        if (res == true) {
            // Not CWC ID found, good.
            // Now we need to confirm the family (does not matter if just one person or multiple person family)
            String confirmationNumber = registrationService.confirmFamilyWithCWCID(familyInfo);
            // The reason why we need to save the information of cwc id and its corresponding family id is because
            // the supervisor's demanding and this is extremely inconvenient for developer. MD!!
            int familyID = registrationService.getFamilyId(targetCWCID);
            registrationService.saveCWCID(familyID, familyInfo);
            System.out.println("The saved cwc id and its return family id is"+familyID);

            return Result.success(confirmationNumber);
        } else {
            // There exists a CWC ID
            return Result.error("You are very bad luck, your CWC ID has been taken");
        }
    }

    // The following two APIs: confirmAdults and confirmChildren could be improved due to high duplication codes
    // Improvements involves API modification from the front-end, and we could merge them together
    @PostMapping (value = "registration/confirmAdults", produces = "application/json")
    public Result confirmAdults(@RequestBody List<AdultAttendee> adultAttendeeList) {
        for (AdultAttendee adultAttendee : adultAttendeeList) {
            int familyID = registrationService.getFamilyId(adultAttendee.getCwc_id());
            adultAttendee.setFamily_id(familyID);
            registrationService.saveAdultAttendee(adultAttendee);
            System.out.println("The current adult attendee is"+adultAttendee);
        }
        System.out.println("The adult attendee list is " + adultAttendeeList.get(0).toString());
        return new Result().success(adultAttendeeList.get(0));
    }

    @PostMapping (value = "registration/confirmChildren", produces = "application/json")
    public Result confirmChildren(@RequestBody List<ChildAttendee> childAttendeeList) {
        for (ChildAttendee childAttendee : childAttendeeList) {
            int familyID = registrationService.getFamilyId(childAttendee.getCwc_id());
            childAttendee.setFamily_id(familyID);
            registrationService.saveChildrenAttendee(childAttendee);
            System.out.println("The current adult attendee is"+childAttendee);
        }
        System.out.println("The adult attendee list is " + childAttendeeList.get(0).toString());
        return new Result().success(childAttendeeList.get(0));
    }

}

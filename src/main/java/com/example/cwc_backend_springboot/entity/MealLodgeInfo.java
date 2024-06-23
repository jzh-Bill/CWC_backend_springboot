package com.example.cwc_backend_springboot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MealLodgeInfo {
    private String date;
    private int breakfast;
    private int lunch;
    private int dinner;
    private int lodge;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getBreakfast() {
        return breakfast;
    }

    public void setBreakfast(int breakfast) {
        this.breakfast = breakfast;
    }

    public int getLunch() {
        return lunch;
    }

    public void setLunch(int lunch) {
        this.lunch = lunch;
    }

    public int getDinner() {
        return dinner;
    }

    public void setDinner(int dinner) {
        this.dinner = dinner;
    }

    public int getLodge() {
        return lodge;
    }

    public void setLodge(int lodge) {
        this.lodge = lodge;
    }
}

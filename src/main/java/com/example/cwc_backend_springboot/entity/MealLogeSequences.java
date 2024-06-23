package com.example.cwc_backend_springboot.entity;

public class MealLogeSequences {
    public String date;
    public String mealAndLodgeSequence;

    public String getDate() {
        return this.date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getMealAndLodgeSequence() {
        return this.mealAndLodgeSequence;
    }

    public void setMealAndLodgeSequence(String mealAndLodgeSequence) {
        this.mealAndLodgeSequence = mealAndLodgeSequence;
    }

    @Override
    public String toString() {
        return "MealLogeSequences{" +
                "date='" + date + '\'' +
                ", mealAndLodgeSequence='" + mealAndLodgeSequence + '\'' +
                '}';
    }
}

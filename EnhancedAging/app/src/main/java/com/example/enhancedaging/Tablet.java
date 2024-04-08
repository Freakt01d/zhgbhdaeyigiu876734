package com.example.enhancedaging;

import com.google.firebase.firestore.DocumentId;

public class Tablet {
    @DocumentId
    private String id;

    private String name;
    private String dosage;
    private String frequency;
    private String intakeSchedule;
    private String intakeTime;
    private String imageUrl; // Changed from imagePath to imageUrl to match Firestore

    // Getters and Setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDosage() {
        return dosage;
    }

    public void setDosage(String dosage) {
        this.dosage = dosage;
    }

    public String getFrequency() {
        return frequency;
    }

    public void setFrequency(String frequency) {
        this.frequency = frequency;
    }

    public String getIntakeSchedule() {
        return intakeSchedule;
    }

    public void setIntakeSchedule(String intakeSchedule) {
        this.intakeSchedule = intakeSchedule;
    }

    public String getIntakeTime() {
        return intakeTime;
    }

    public void setIntakeTime(String intakeTime) {
        this.intakeTime = intakeTime;
    }

    public String getImageUrl() { // Getter and setter updated
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) { // Parameter name updated
        this.imageUrl = imageUrl;
    }

    // Default constructor required for Firestore data mapping
    public Tablet() {
    }

    // Constructor with all fields
    public Tablet(String id, String name, String dosage, String frequency, String intakeSchedule, String intakeTime, String imageUrl) {
        this.id = id;
        this.name = name;
        this.dosage = dosage;
        this.frequency = frequency;
        this.intakeSchedule = intakeSchedule;
        this.intakeTime = intakeTime;
        this.imageUrl = imageUrl; // Ensure this matches Firestore and constructor parameters
    }
}

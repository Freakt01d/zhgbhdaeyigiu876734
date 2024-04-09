package com.example.enhancedaging;

import com.google.firebase.Timestamp;

public class Report {
    private String hospitalName;
    private String description;
    private Timestamp timestamp;
    private String imageUrl; // URL of the image in the cloud storage

    // No-argument constructor required for Firebase deserialization
    public Report() {
    }

    // Constructor with arguments
    public Report(String hospitalName, String description, Timestamp timestamp, String imageUrl) {
        this.hospitalName = hospitalName;
        this.description = description;
        this.timestamp = timestamp;
        this.imageUrl = imageUrl;
    }

    // Getters
    public String getHospitalName() {
        return hospitalName;
    }

    public String getDescription() {
        return description;
    }

    public Timestamp getTimestamp() {
        return timestamp;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    // Setters (if needed, for Firebase you often need setters for the fields)
    public void setHospitalName(String hospitalName) {
        this.hospitalName = hospitalName;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setTimestamp(Timestamp timestamp) {
        this.timestamp = timestamp;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }
}

package com.example.enhancedaging;

public class HealthData {
    private long id;
    private long timestamp;
    private double weight;
    private Double spo2;
    private Double heartRate;
    private String bloodPressure;

    // Default constructor
    public HealthData() {
        // This constructor is empty and can be used to instantiate a HealthData object without setting properties upfront.
    }

    // Parameterized constructor
    public HealthData(long id, long timestamp, double weight, Double spo2, Double heartRate, String bloodPressure) {
        this.id = id;
        this.timestamp = timestamp;
        this.weight = weight;
        this.spo2 = spo2;
        this.heartRate = heartRate;
        this.bloodPressure = bloodPressure;
    }

    // Getters
    public long getId() {
        return id;
    }

    public long getTimestamp() {
        return timestamp;
    }

    public double getWeight() {
        return weight;
    }

    public Double getSpo2() {
        return spo2;
    }

    public Double getHeartRate() {
        return heartRate;
    }

    public String getBloodPressure() {
        return bloodPressure;
    }

    // Setters
    public void setId(long id) {
        this.id = id;
    }

    public void setTimestamp(long timestamp) {
        this.timestamp = timestamp;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public void setSpo2(Double spo2) {
        this.spo2 = spo2;
    }

    public void setHeartRate(Double heartRate) {
        this.heartRate = heartRate;
    }

    public void setBloodPressure(String bloodPressure) {
        this.bloodPressure = bloodPressure;
    }
}

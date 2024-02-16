package com.dogcollarapp;

public class Coordinates {

    private double longitude = 0;
    private double latitude = 0;
    private String serialNumber = "False";

    public double getLongitude(){
        return longitude;
    }
    public double getLatitude(){
        return latitude;
    }
    public String getSerialNumber(){
        return serialNumber;
    }

    public void setLongitude(double input) {
        longitude = input;
    }
    public void setLatitude(double input) {
        latitude = input;
    }
    public void setSerialNumber(String input) {
        serialNumber = input;
    }
}

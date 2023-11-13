package com.dogcollarapp;

public class Coordinates {

    private double longitude;
    private double latitude;
    private String serialNumber;

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

package com.dogcollarapp;

public class getInfoFromServer {
    public Coordinates getCoordinates(String serialNumber) {
        Coordinates coordinates = new Coordinates();

        //call server and get coordinates
        coordinates.setLongitude(1);
        coordinates.setLatitude(3);
        coordinates.setSerialNumber("cow");

        return coordinates;
    }

    public void setCoordinates(double longitude, double latitude, String serialNumber){

        //make call to server and store values of each.

    }
}

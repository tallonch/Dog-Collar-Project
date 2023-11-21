package dogcollarapp;

public class getInfoFromServer {
    public Coordinates getCoordinates(String serialNumber) {
        Coordinates coordinates = new Coordinates();

        //call server and get coordinates
        coordinates.setLongitude(35.2938);
        coordinates.setLatitude(93.1361);
        coordinates.setSerialNumber("My dog");

        return coordinates;
    }

    public void setCoordinates(double longitude, double latitude, String serialNumber){

        //make call to server and store values of each.

    }
}

package dogcollarapp;



public class getInfoFromServer {
    public Coordinates getCoordinates(String serialNumber) {
        Coordinates coordinates = new Coordinates();

        //call server and get coordinates
        coordinates.setLatitude(35.2938);
        coordinates.setLongitude(-93.1361);
        coordinates.setSerialNumber("cow");

        //const {LatLng} = await google.maps.importLibrary("core");

        return coordinates;
    }

    public void setCoordinates(double longitude, double latitude, String serialNumber){

        //make call to server and store values of each.

    }
}

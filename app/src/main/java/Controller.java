import dogcollarapp.getInfoFromServer;
import dogcollarapp.Coordinates;

public class Controller {

    //This will get the coordinates for the frontend.
    public Coordinates getCoordinates(String serialNumber) {
            Coordinates coordinates;
            getInfoFromServer getInfoFromServer = new getInfoFromServer();

            //This will get the coordinates and save it to coordinates.
            coordinates = getInfoFromServer.getCoordinates(serialNumber);

            //Once I can build the code I want to run this to make sure the correct values are returning
            System.out.println(coordinates.getLatitude() + coordinates.getLongitude() + coordinates.getSerialNumber());

            return coordinates;
    }


    // This should update Coordinates I don't think this will be necessary in this project since the app wont need to send its Coordinates
    public void setCoordinates(double longitude,double latitude, String serialNumber){
        getInfoFromServer getInfoFromServer = new getInfoFromServer();

        //This calls a function that will set the coordinates
        getInfoFromServer.setCoordinates(longitude, latitude, serialNumber);
    }
}

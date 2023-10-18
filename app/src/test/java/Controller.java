import com.dogcollarapp.Coordinates;

public class Controller {

    public Coordinates getCoordinates(String serialNumber) {

        Coordinates coordinates = new Coordinates();

        coordinates.setLatitude(5); // {
        coordinates.setLongitude(6); // when finished these will be populated by an API call that will have updated values from the database.
        coordinates.setSerialNumber("First"); // }

        //Coordinates.setLatitude(API call);
        //Coordinates.setLongitude(API call);
        //Coordinates.setSerialNumber(API call);

        System.out.println(coordinates.getLatitude() + coordinates.getLongitude() + coordinates.getSerialNumber());
        //Once I can build the code I want to run this to make sure the correct values are returning

        return coordinates;
    }

    // This should update Coordinates I don't think this will be necessary in this project since the app wont need to send its Coordinates
    public void setCoordinates(double longitude,double latitude, String serialNumber){
        Coordinates coordinates = new Coordinates();

        //This will populate the Coordinates datatype that will then be passed to server
        coordinates.setLongitude(longitude);
        coordinates.setLatitude(latitude);
        coordinates.setSerialNumber(serialNumber);

        // This is where we would send the Coordinates to the server.


    }
}

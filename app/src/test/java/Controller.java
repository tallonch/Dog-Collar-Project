import com.dogcollarapp.Cordinates;

public class Controller {

    public Cordinates getCoordinates(String serialNumber) {

        Cordinates cordinates = new Cordinates();

        cordinates.setlatitude(5); // {
        cordinates.setLongitude(6); // when finished these will be populated by an API call that will have updated values from the database.
        cordinates.setserialNumber("First"); // }

        //cordinates.setlatitude(API call);
        //cordinates.setLongitude(API call);
        //cordinates.setserialNumber(API call);

        System.out.println(cordinates.getLatitude() + cordinates.getLongitude() + cordinates.getSerialNumber());
        //Once I can build the code I want to run this to make sure the correct values are returning

        return cordinates;
    }

    // This should update cordiantes I dont think this will be nessisary in this project since the app wont need to send its cordinates
    public void setCordinates(double longitude,double latitude, String serialNumber){
        Cordinates cordinates = new Cordinates();

        //This will populate the cordiates datatype that will then be passed to server
        cordinates.setLongitude(longitude);
        cordinates.setlatitude(latitude);
        cordinates.setserialNumber(serialNumber);

        // This is where we would send the cordiates to the server.


    }
}

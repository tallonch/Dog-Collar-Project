package com.dogcollarapp;
import com.google.gson.Gson;
import com.mongodb.*;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoDatabase;

import org.bson.Document;

import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;

public class getInfoFromServer {
    public Coordinates getCoordinates(String serialNumber) {
        Coordinates coordinates = new Coordinates();
/*
        //call server and get coordinates
        String connectionString = "mongodb+srv://clmcclure1994:5P0t0N&1m0r38u9@cluster0.26aii0t.mongodb.net/?retryWrites=true&w=majority";

        ServerApi serverApi = ServerApi.builder()
                .version(ServerApiVersion.V1)
                .build();

        MongoClientSettings settings = MongoClientSettings.builder()
                .applyConnectionString(new ConnectionString(connectionString))
                .serverApi(serverApi)
                .build();

        System.out.println("We got this far");

        // Create a new client and connect to the server
        try (MongoClient mongoClient = MongoClients.create(settings)) {
            try {

                // Send a ping to confirm a successful connection
                MongoDatabase database = mongoClient.getDatabase("SpotOn");
                database.runCommand(new Document("ping", 1));
                System.out.println("Pinged your deployment. You successfully connected to MongoDB!");
                mongoClient.close();

            } catch (MongoException e) {
                e.printStackTrace();
                mongoClient.close();
            }
        } catch (MongoException e) {
            e.printStackTrace();
        }
*/
        coordinates.setLongitude(1);
        coordinates.setLatitude(3);
        coordinates.setSerialNumber("cow");

        return coordinates;
    }

    public void setCoordinates(double longitude, double latitude, String serialNumber){

        //make call to server and store values of each.

    }
}
package com.dogcollarapp;

import android.os.Bundle;
import android.view.View;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.material.bottomnavigation.BottomNavigationView;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.navigation.ui.NavigationUI;

import com.dogcollarapp.databinding.ActivityMainBinding;
//Import Google Maps
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.OnMapReadyCallback;

import dogcollarapp.Coordinates;
import dogcollarapp.Controller;


public class MainActivity extends AppCompatActivity implements OnMapReadyCallback{

    private ActivityMainBinding binding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        binding = ActivityMainBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        binding.GetCoordinates.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick (View v){
                Coordinates coordinates = dogcollarapp.Controller.getCoordinates("cow");
                binding.textView.setText(coordinates.getLatitude() + " " + coordinates.getLongitude() + " " + coordinates.getSerialNumber());
                //binding.maps.
            }
        });



        /*BottomNavigationView navView = findViewById(R.id.nav_view);
        // Passing each menu ID as a set of Ids because each
        // menu should be considered as top level destinations.
        AppBarConfiguration appBarConfiguration = new AppBarConfiguration.Builder(
                R.id.navigation_home, R.id.navigation_dashboard, R.id.navigation_notifications)
                .build();
        NavController navController = Navigation.findNavController(this, R.id.nav_host_fragment_activity_main);
        NavigationUI.setupActionBarWithNavController(this, navController, appBarConfiguration);
        NavigationUI.setupWithNavController(binding.navView, navController);*/

        //Use Import of Google Maps
        SupportMapFragment mapFragment = (SupportMapFragment) getSupportFragmentManager().findFragmentById(R.id.maps);
        mapFragment.getMapAsync(this);
    }

    @Override
    public void onMapReady(@NonNull GoogleMap googleMap) {
        Coordinates coordinates = dogcollarapp.Controller.getCoordinates("cow");
        googleMap.addMarker(new MarkerOptions()
                .position(new LatLng(coordinates.getLatitude(), coordinates.getLongitude())).title("Marker"));
    }
}
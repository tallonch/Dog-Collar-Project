package com.dogcollarapp;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;

import com.dogcollarapp.ui.ListFragment;
import com.dogcollarapp.ui.MapFragment;
import com.dogcollarapp.ui.SettingsFragment;
import com.dogcollarapp.ui.home.HomeFragment;
import com.google.android.material.bottomnavigation.BottomNavigationView;

import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.navigation.ui.NavigationUI;

import com.dogcollarapp.databinding.ActivityMainBinding;

public class MainActivity extends AppCompatActivity {

    private ActivityMainBinding binding;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        binding = ActivityMainBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());
        replaceFragment(new MapFragment());

        //Button actions


        //Unknown error caused by View.OnClickListener()

        Button btnShowDialog;
        btnShowDialog = (Button) findViewById(R.id.add_tracker);

/*
        btnShowDialog.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                showDialog();
            }
        });
*/

        //Old code for previous version

/*        binding.GetCoordinates.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick (View v){
                Coordinates coordinates = com.dogcollarapp.Controller.getCoordinates("cow");
                binding.textView.setText(coordinates.getLatitude() + " " + coordinates.getLongitude() + " " + coordinates.getSerialNumber());
            }
        });
*/
        binding.bottomNavigationView.setOnItemSelectedListener(item -> {

            if (item.getItemId() == R.id.listPage){
                replaceFragment(new ListFragment());

            }else if(item.getItemId() == R.id.mapPage){
                replaceFragment(new MapFragment());

            }else if(item.getItemId() == R.id.settingsPage){
                replaceFragment(new SettingsFragment());

            }


             return true;
        });



    }

    private void showDialog(){

        Dialog dialog = new Dialog(this);
        dialog.setContentView(R.layout.layout_custom_dialog);
        dialog.show();

    }

    private void replaceFragment(Fragment fragment){

        FragmentManager fragmentManager = getSupportFragmentManager();
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        fragmentTransaction.replace(R.id.frame_layout,fragment);
        fragmentTransaction.commit();

    }

}
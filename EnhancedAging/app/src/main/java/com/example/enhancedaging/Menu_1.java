package com.example.enhancedaging;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

public class Menu_1 extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_menu1);
        View rootView = getWindow().getDecorView().getRootView(); // Get the root view of the activity
        ViewCompat.setOnApplyWindowInsetsListener(rootView, (v, insets) -> {
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars());
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom);
            return insets;
        });

        // Find the button by its ID
        Button openTrackingHealthButton = findViewById(R.id.emergencyButton);
        Button openTrackingHealthButton1 = findViewById(R.id.buttonBelowEmergency1);
        Button openTrackingHealthButton2 = findViewById(R.id.buttonBelowEmergency2);
        Button openTrackingHealthButton3 = findViewById(R.id.emergencyButton1);

        // Set an OnClickListener to the button
        openTrackingHealthButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the TrackingHealth activity when the button is clicked
                startActivity(new Intent(Menu_1.this, TrackingHealth.class));
            }
        });


        openTrackingHealthButton3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the TrackingHealth activity when the button is clicked
                startActivity(new Intent(Menu_1.this, MedicationManagement.class));
            }
        });
        openTrackingHealthButton1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the TrackingHealth activity when the button is clicked
                startActivity(new Intent(Menu_1.this, EmergencyResponse.class));
            }
        });

        openTrackingHealthButton2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the TrackingHealth activity when the button is clicked
                startActivity(new Intent(Menu_1.this, Messenger.class));
            }
        });
    }
}

package com.example.enhancedaging;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

import com.example.enhancedaging.Routine.RoutineAnalysis;
import com.example.enhancedaging.fall_detection.MainActivity4;

public class EmergencyResponse extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_emergency_response);

        View mainView = findViewById(android.R.id.content);
        ViewCompat.setOnApplyWindowInsetsListener(mainView, (v, insets) -> {
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars());
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom);
            return insets;


        });
        Button openMenuButton3 = findViewById(R.id.emergencyButton);
        Button openMenuButton2 = findViewById(R.id.emergencyButton1);

        openMenuButton3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the Menu_1 activity when the ImageButton is clicked
                startActivity(new Intent(EmergencyResponse.this, MainActivity4.class));
            }
        });

        openMenuButton2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the Menu_1 activity when the ImageButton is clicked
                startActivity(new Intent(EmergencyResponse.this, RoutineAnalysis.class));
            }
        });
    }
}

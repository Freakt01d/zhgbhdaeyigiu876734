package com.example.enhancedaging;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;

public class MedicationManagement extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this); // Ensures that the layout extends to the edges, including for system bars.
        setContentView(R.layout.activity_medication_management);

        // Find the button by its ID
        Button openTrackingHealthButton = findViewById(R.id.medicb);

        // Set an OnClickListener to the button
        openTrackingHealthButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the MedicInner activity when the button is clicked
                startActivity(new Intent(MedicationManagement.this, MedicInner.class));
            }
        });
    }
}

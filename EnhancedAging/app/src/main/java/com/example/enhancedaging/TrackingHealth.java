package com.example.enhancedaging;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.firestore.FirebaseFirestore;

import java.util.HashMap;
import java.util.Map;

public class TrackingHealth extends AppCompatActivity {
    private EditText weightEditText, spo2EditText, heartRateEditText, bpEditText;
    private Button saveButton, openButton, connectWearableButton; // Added button to connect to wearable
    private FirebaseFirestore db;

    @SuppressLint("MissingInflatedId")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tracking_health);

        // Initialize Firestore
        db = FirebaseFirestore.getInstance();

        weightEditText = findViewById(R.id.weightEditText1);
        spo2EditText = findViewById(R.id.heartedittext); // Ensure the ID matches with your XML
        heartRateEditText = findViewById(R.id.weightEditText); // ID updated to match the XML
        bpEditText = findViewById(R.id.bpEditText);
        saveButton = findViewById(R.id.saveButton);
        openButton = findViewById(R.id.Display);
        //connectWearableButton = findViewById(R.id.yourConnectWearableButtonId); // Initialize connect wearable button if needed

        saveButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                saveData();
            }
        });

        openButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Implement logic to open the display activity
                Intent intent = new Intent(TrackingHealth.this, DisplayHealth.class);
                startActivity(intent);
            }
        });

        // Example to connect to wearable, you may need to implement actual connection logic
        /*connectWearableButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Connect to wearable device logic here
            }
        });*/
    }

    private void saveData() {
        double weight = Double.parseDouble(weightEditText.getText().toString().isEmpty() ? "0" : weightEditText.getText().toString());
        double spo2 = Double.parseDouble(spo2EditText.getText().toString().isEmpty() ? "0" : spo2EditText.getText().toString());
        double heartRate = Double.parseDouble(heartRateEditText.getText().toString().isEmpty() ? "0" : heartRateEditText.getText().toString());
        String bloodPressure = bpEditText.getText().toString();

        // Get current user's email
        String userEmail = FirebaseAuth.getInstance().getCurrentUser().getEmail();

        // Prepare health data
        Map<String, Object> healthData = new HashMap<>();
        healthData.put("weight", weight);
        healthData.put("spo2", spo2);
        healthData.put("heartRate", heartRate);
        healthData.put("bloodPressure", bloodPressure);
        healthData.put("timestamp", System.currentTimeMillis()); // Using System's currentTimeMillis for timestamp

        // Save data to Firestore
        db.collection("elders")
                .document(userEmail)
                .collection("healthData")
                .document(String.valueOf(System.currentTimeMillis())) // Using System's currentTimeMillis as document ID
                .set(healthData)
                .addOnSuccessListener(new OnSuccessListener<Void>() {
                    @Override
                    public void onSuccess(Void aVoid) {
                        Toast.makeText(TrackingHealth.this, "Data Saved Successfully to Firestore!", Toast.LENGTH_SHORT).show();
                    }
                })
                .addOnFailureListener(new OnFailureListener() {
                    @Override
                    public void onFailure(@NonNull Exception e) {
                        Toast.makeText(TrackingHealth.this, "Error saving data to Firestore", Toast.LENGTH_SHORT).show();
                    }
                });
    }
}

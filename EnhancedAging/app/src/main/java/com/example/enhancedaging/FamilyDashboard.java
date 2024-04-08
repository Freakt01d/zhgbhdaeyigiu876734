package com.example.enhancedaging;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

public class FamilyDashboard extends AppCompatActivity {

    private static final String TAG = "FamilyDashboard";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_family_dashboard);

        ImageButton openMenuButton1 = findViewById(R.id.profileImageView);
        Button trackingVitalsButton = findViewById(R.id.emergencyButton);
        Button medicationManagement = findViewById(R.id.emergencyButton1);

        openMenuButton1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(FamilyDashboard.this, ProfileViewFam.class);
                startActivity(intent);
            }
        });


        medicationManagement.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(FamilyDashboard.this, MedicationManagement.class);
                startActivity(intent);
            }
        });


        trackingVitalsButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                fetchElderMailAndOpenDisplayHealth();
            }
        });

    }

    private void fetchElderMailAndOpenDisplayHealth() {
        FirebaseUser currentUser = FirebaseAuth.getInstance().getCurrentUser();
        if (currentUser != null) {
            String currentUserEmail = currentUser.getEmail();
            if (currentUserEmail != null) {
                DatabaseReference databaseReference = FirebaseDatabase.getInstance().getReferenceFromUrl("https://elder-aaa86-default-rtdb.asia-southeast1.firebasedatabase.app/").child("families");

                databaseReference.orderByChild("Email").equalTo(currentUserEmail).addListenerForSingleValueEvent(new ValueEventListener() {
                    @Override
                    public void onDataChange(@NonNull DataSnapshot dataSnapshot) {
                        if (!dataSnapshot.exists()) {
                            Log.d(TAG, "No data found for email: " + currentUserEmail);
                            return;
                        }
                        for (DataSnapshot snapshot : dataSnapshot.getChildren()) {
                            String elderMail = snapshot.child("ElderMail").getValue(String.class);
                            if (elderMail != null) {
                                Log.d(TAG, "Elder mail found: " + elderMail);
                                // Now use elderMail to query Firestore or pass to the next class
                                Intent intent = new Intent(FamilyDashboard.this, DisplayHealth.class);
                                intent.putExtra("ElderMail", elderMail);
                                startActivity(intent);
                                break;
                            }
                        }
                    }

                    @Override
                    public void onCancelled(@NonNull DatabaseError databaseError) {
                        Log.e(TAG, "Database error: " + databaseError.getMessage());
                    }
                });
            } else {
                Log.d(TAG, "Current user email is null");
            }
        } else {
            Log.d(TAG, "Current user is null");
        }
    }
}

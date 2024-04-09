package com.example.enhancedaging;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

public class MedicationManagement extends AppCompatActivity {

    private static final String TAG = "MedicationManagement";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_medication_management);

        Button medicButton = findViewById(R.id.medicb);
        Button reportButton = findViewById(R.id.report);
        Button prescriptionButton = findViewById(R.id.prescription);

        medicButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                fetchElderMailAndOpenActivity(MedicInner.class);
            }
        });

        reportButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                fetchElderMailAndOpenActivity(Reports_Med.class);
            }
        });

        prescriptionButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                fetchElderMailAndOpenActivity(Prescription.class);
            }
        });
    }

    private void fetchElderMailAndOpenActivity(Class<?> targetActivity) {
        FirebaseUser currentUser = FirebaseAuth.getInstance().getCurrentUser();
        if (currentUser != null) {
            String currentUserEmail = currentUser.getEmail();
            DatabaseReference databaseReference = FirebaseDatabase.getInstance().getReferenceFromUrl("https://elder-aaa86-default-rtdb.asia-southeast1.firebasedatabase.app/").child("families");

            databaseReference.orderByChild("Email").equalTo(currentUserEmail).addListenerForSingleValueEvent(new ValueEventListener() {
                @Override
                public void onDataChange(@NonNull DataSnapshot dataSnapshot) {
                    if (!dataSnapshot.exists()) {
                        Log.d(TAG, "No data found for email: " + currentUserEmail);
                        Intent intent = new Intent(MedicationManagement.this, targetActivity);
                        intent.putExtra("ElderMail", currentUserEmail);
                        startActivity(intent);
                    } else {
                        for (DataSnapshot snapshot : dataSnapshot.getChildren()) {
                            String elderMail = snapshot.child("ElderMail").getValue(String.class);
                            if (elderMail != null) {
                                Log.d(TAG, "Elder mail found: " + elderMail);
                                Intent intent = new Intent(MedicationManagement.this, targetActivity);
                                intent.putExtra("ElderMail", elderMail);
                                startActivity(intent);
                                break; // Break after finding the first match
                            }
                        }
                    }
                }

                @Override
                public void onCancelled(@NonNull DatabaseError databaseError) {
                    Log.e(TAG, "Database error: " + databaseError.getMessage());
                }
            });
        } else {
            Log.d(TAG, "Current user is null");
        }
    }
}

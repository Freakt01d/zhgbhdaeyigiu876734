package com.example.enhancedaging;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;
import java.util.Objects;

public class ProfileView extends AppCompatActivity {

    private TextView usernameTextView, emailTextView, nameTextView, ageTextView, genderTextView, phoneTextView, aadhaarTextView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_profile_view);
        FirebaseApp.initializeApp(this);

        // Initialize TextViews
        usernameTextView = findViewById(R.id.usernameTextView);
        emailTextView = findViewById(R.id.emailTextView);
        nameTextView = findViewById(R.id.nameTextView); // Ensure these IDs match your layout XML
        ageTextView = findViewById(R.id.ageTextView);
        genderTextView = findViewById(R.id.genderTextView);
        phoneTextView = findViewById(R.id.phoneTextView);
        aadhaarTextView = findViewById(R.id.aadhaarTextView);


        String userEmail = Objects.requireNonNull(FirebaseAuth.getInstance().getCurrentUser()).getEmail();

        fetchUserProfile(userEmail);
    }

    private void fetchUserProfile(String userEmail) {
        FirebaseDatabase database = FirebaseDatabase.getInstance("https://elder-aaa86-default-rtdb.asia-southeast1.firebasedatabase.app/");
        DatabaseReference databaseReference = database.getReference().child("users");

        databaseReference.orderByChild("Email").equalTo(userEmail).addListenerForSingleValueEvent(new ValueEventListener() {
            @SuppressLint("SetTextI18n")
            @Override
            public void onDataChange(@NonNull DataSnapshot dataSnapshot) {
                if (dataSnapshot.exists()) {
                    for (DataSnapshot snapshot : dataSnapshot.getChildren()) {
                        // Extract data, handling all values as strings
                        String name = snapshot.child("Name").getValue(String.class);
                        String email = snapshot.child("Email").getValue(String.class);
                        String age = snapshot.child("Age").getValue(String.class);
                        String gender = snapshot.child("Gender").getValue(String.class);
                        String phone = snapshot.child("Phone").getValue(String.class);
                        String aadhaar = snapshot.child("Aadhaar").getValue(String.class);

                        // Update UI
                        usernameTextView.setText(name);
                        emailTextView.setText(email);
                        nameTextView.setText("Name: " + name);
                        ageTextView.setText("Age: " + age);
                        genderTextView.setText("Gender: " + gender);
                        phoneTextView.setText("Phone: " + phone);
                        aadhaarTextView.setText("Aadhaar: " + aadhaar);
                    }
                }
            }

            @Override
            public void onCancelled(@NonNull DatabaseError databaseError) {
                // Handle possible errors
            }
        });
    }
}

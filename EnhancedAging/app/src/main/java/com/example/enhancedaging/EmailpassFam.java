package com.example.enhancedaging;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

public class EmailpassFam extends AppCompatActivity {

    private EditText editTextPassword;
    private Button buttonLogin;
    private String email;

    private FirebaseAuth mAuth;
    private DatabaseReference usersRef; // Reference to the Firebase Database

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_emailpass_fam);

        mAuth = FirebaseAuth.getInstance();
        FirebaseDatabase database = FirebaseDatabase.getInstance("https://elder-aaa86-default-rtdb.asia-southeast1.firebasedatabase.app/");
        usersRef = database.getReference("families");

        editTextPassword = findViewById(R.id.editTextPassword);
        buttonLogin = findViewById(R.id.btnLogin);

        email = getIntent().getStringExtra("email");

        buttonLogin.setOnClickListener(v -> {
            String password = editTextPassword.getText().toString().trim();

            if (!email.isEmpty() && !password.isEmpty()) {
                signInWithEmailPassword(email, password);
            } else {
                Toast.makeText(EmailpassFam.this, "Please enter your password", Toast.LENGTH_SHORT).show();
            }
        });
    }

    private void signInWithEmailPassword(String email, String password) {
        mAuth.signInWithEmailAndPassword(email, password)
                .addOnCompleteListener(EmailpassFam.this, task -> {
                    if (task.isSuccessful()) {
                        // After successful sign-in, check if user exists in the database
                        FirebaseUser user = mAuth.getCurrentUser();
                        if (user != null) {
                            checkIfUserExists(user);
                        }
                    } else {
                        Toast.makeText(EmailpassFam.this, "Authentication failed.", Toast.LENGTH_SHORT).show();
                    }
                });
    }

    private void checkIfUserExists(FirebaseUser user) {
        // Query the "families" node based on the user's email
        usersRef.orderByChild("Email").equalTo(user.getEmail()).addListenerForSingleValueEvent(new ValueEventListener() {
            @Override
            public void onDataChange(@NonNull DataSnapshot dataSnapshot) {
                if (dataSnapshot.exists()) {
                    // User exists, direct them to the dashboard
                    Intent intent = new Intent(EmailpassFam.this, FamilyDashboard.class);
                    startActivity(intent);
                    finish();
                } else {
                    // User doesn't exist, redirect them to the signup page
                    Intent intent = new Intent(EmailpassFam.this, FamilySignUp.class);
                    // Pass the email to the signup activity
                    intent.putExtra("email", user.getEmail());
                    startActivity(intent);
                    finish();
                }
            }

            @Override
            public void onCancelled(@NonNull DatabaseError databaseError) {
                Toast.makeText(EmailpassFam.this, "Database error: " + databaseError.getMessage(), Toast.LENGTH_SHORT).show();
            }
        });
    }
}

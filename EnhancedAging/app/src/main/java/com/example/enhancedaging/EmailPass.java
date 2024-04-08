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

public class EmailPass extends AppCompatActivity {

    private EditText editTextPassword;
    private Button buttonLogin;
    private String email;

    private FirebaseAuth mAuth;
    private DatabaseReference usersRef; // Reference to the Firebase Database

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_email_pass);

        mAuth = FirebaseAuth.getInstance();
        FirebaseDatabase database = FirebaseDatabase.getInstance("https://elder-aaa86-default-rtdb.asia-southeast1.firebasedatabase.app/");
        usersRef = database.getReference("users");

        editTextPassword = findViewById(R.id.editTextPassword);
        buttonLogin = findViewById(R.id.btnLogin);

        email = getIntent().getStringExtra("email");

        buttonLogin.setOnClickListener(v -> {
            String password = editTextPassword.getText().toString().trim();

            if (!email.isEmpty() && !password.isEmpty()) {
                signInWithEmailPassword(email, password);
            } else {
                Toast.makeText(EmailPass.this, "Please enter your password", Toast.LENGTH_SHORT).show();
            }
        });
    }

    private void signInWithEmailPassword(String email, String password) {
        mAuth.signInWithEmailAndPassword(email, password)
                .addOnCompleteListener(EmailPass.this, task -> {
                    if (task.isSuccessful()) {
                        // After successful sign-in, check if user exists in the database
                        FirebaseUser user = mAuth.getCurrentUser();
                        if (user != null) {
                            checkIfUserExists(user);
                        }
                    } else {
                        Toast.makeText(EmailPass.this, "Authentication failed.", Toast.LENGTH_SHORT).show();
                    }
                });
    }

    private void checkIfUserExists(FirebaseUser user) {
        usersRef.child(user.getUid()).addListenerForSingleValueEvent(new ValueEventListener() {
            @Override
            public void onDataChange(@NonNull DataSnapshot dataSnapshot) {
                if (dataSnapshot.exists()) {
                    Intent intent = new Intent(EmailPass.this, Dashboard.class);
                    startActivity(intent);
                    finish();
                } else {
                    Intent intent = new Intent(EmailPass.this, ElderSignUp.class);
                    startActivity(intent);
                    finish();
                }
            }

            @Override
            public void onCancelled(@NonNull DatabaseError databaseError) {
                Toast.makeText(EmailPass.this, "Database error: " + databaseError.getMessage(), Toast.LENGTH_SHORT).show();
            }
        });
    }
}

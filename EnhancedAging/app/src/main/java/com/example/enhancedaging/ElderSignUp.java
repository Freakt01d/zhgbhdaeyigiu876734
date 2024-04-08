package com.example.enhancedaging;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;

import java.util.HashMap;
import java.util.Map;

public class ElderSignUp extends AppCompatActivity {

    private EditText editTextName, editTextAge, editTextPhone, editTextUsername, editTextAadharNumber;
    private RadioGroup radioGroupGender;
    private Button btnSubmit;

    private FirebaseAuth mAuth;
    private DatabaseReference mDatabase;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_elder_sign_up);

        mAuth = FirebaseAuth.getInstance();
        mDatabase = FirebaseDatabase.getInstance().getReference("users");

        editTextName = findViewById(R.id.editTextName);
        editTextAge = findViewById(R.id.editTextAge);
        editTextPhone = findViewById(R.id.editTextPhone);
        editTextUsername = findViewById(R.id.editTextUsername);
        editTextAadharNumber = findViewById(R.id.editTextAadharNumber);
        radioGroupGender = findViewById(R.id.radioGroupGender);
        btnSubmit = findViewById(R.id.btnSubmit);

        btnSubmit.setOnClickListener(v -> registerUser());
    }

    private void registerUser() {
        String name = editTextName.getText().toString().trim();
        String age = editTextAge.getText().toString().trim();
        String phone = editTextPhone.getText().toString().trim();
        String username = editTextUsername.getText().toString().trim();
        String aadharNumber = editTextAadharNumber.getText().toString().trim();
        RadioButton selectedGenderButton = findViewById(radioGroupGender.getCheckedRadioButtonId());
        String gender = selectedGenderButton == null ? "" : selectedGenderButton.getText().toString();

        FirebaseUser user = mAuth.getCurrentUser();
        if (user != null) {
            String uid = user.getUid();

            Map<String, String> userData = new HashMap<>();
            userData.put("Name", name);
            userData.put("Age", age);
            userData.put("Phone", phone);
            userData.put("Username", username);
            userData.put("Aadhaar", aadharNumber);
            userData.put("Gender", gender);

            mDatabase.child(uid).setValue(userData)
                    .addOnCompleteListener(task -> {
                        if (task.isSuccessful()) {
                            handleSuccessfulSignup();
                        } else {
                            handleUnsuccessfulSignup();
                        }
                    });
        } else {
            Toast.makeText(this, "No authenticated user found. Please log in.", Toast.LENGTH_LONG).show();
        }
    }

    private void handleSuccessfulSignup() {
        Toast.makeText(ElderSignUp.this, "Signup Successful", Toast.LENGTH_SHORT).show();
        startActivity(new Intent(ElderSignUp.this, LoginEld.class));
        finish();
    }

    private void handleUnsuccessfulSignup() {
        Toast.makeText(ElderSignUp.this, "Signup Failed. Please check your details and try again.", Toast.LENGTH_SHORT).show();
    }
}

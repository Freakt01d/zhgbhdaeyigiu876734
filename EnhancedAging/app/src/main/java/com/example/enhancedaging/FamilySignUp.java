package com.example.enhancedaging;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;

import java.util.HashMap;
import java.util.Map;

public class FamilySignUp extends AppCompatActivity {

    private EditText editTextName, editTextAge, editTextUsername, editTextElderEmail, editTextPhoneNumber, editTextAadharNumber;
    private Button btnSubmit;

    private FirebaseAuth mAuth;
    private DatabaseReference mDatabase;

    private String receivedEmail; // Email received from the previous activity

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_family_sign_up);

        // Initialize FirebaseAuth and DatabaseReference
        mAuth = FirebaseAuth.getInstance();
        mDatabase = FirebaseDatabase.getInstance().getReference().child("families");

        // Initialize UI components
        initializeUI();

        // Get the email passed from the previous Activity
        Intent intent = getIntent();
        receivedEmail = intent.getStringExtra("email"); // "email_key" is the key used when putting the extra into the Intent

        btnSubmit.setOnClickListener(v -> registerFamily());
    }

    private void initializeUI() {
        editTextName = findViewById(R.id.editTextName);
        editTextAge = findViewById(R.id.editTextAge);
        editTextUsername = findViewById(R.id.editTextUsername);
        editTextElderEmail = findViewById(R.id.editTextPassword);
        editTextPhoneNumber = findViewById(R.id.editTextPhoneNumber);
        editTextAadharNumber = findViewById(R.id.editTextAadharNumber);
        btnSubmit = findViewById(R.id.btnSubmit);
    }

    private void registerFamily() {
        String name = editTextName.getText().toString().trim();
        String age = editTextAge.getText().toString().trim();
        String username = editTextUsername.getText().toString().trim();
        String elderEmail = editTextElderEmail.getText().toString().trim();
        String phoneNumber = editTextPhoneNumber.getText().toString().trim();
        String aadharNumber = editTextAadharNumber.getText().toString().trim();

        // Here, you'd need to implement a way to safely retrieve the UID for both `receivedEmail` and `elderEmail`
        // For the purpose of this example, we'll assume these variables are ready to use
        String familyMemberUid = "UID_for_receivedEmail"; // Placeholder: Implement your method to obtain this UID
        String elderUid = "UID_for_elderEmail"; // Placeholder: Implement your method to obtain this UID

        Map<String, Object> familyData = new HashMap<>();
        familyData.put("Aadhaar", aadharNumber);
        familyData.put("Age", age);
        familyData.put("ElderMail", elderEmail);
        familyData.put("Email", receivedEmail); // Using the received email
        familyData.put("Name", name);
        familyData.put("Phone", phoneNumber);
        familyData.put("UID", familyMemberUid); // Assuming this is the UID of the family member who is registering
        familyData.put("Username", username);
        familyData.put("elderid", elderUid); // Assuming this is the UID of the elder

        // Save the family member data to Firebase
        mDatabase.push().setValue(familyData)
                .addOnCompleteListener(task -> {
                    if (task.isSuccessful()) {
                        Toast.makeText(FamilySignUp.this, "Family member registered successfully.", Toast.LENGTH_SHORT).show();
                        startActivity(new Intent(FamilySignUp.this, LoginFam.class));
                        finish();
                    } else {
                        Toast.makeText(FamilySignUp.this, "Registration failed: " + task.getException().getMessage(), Toast.LENGTH_LONG).show();
                    }
                });
    }
}

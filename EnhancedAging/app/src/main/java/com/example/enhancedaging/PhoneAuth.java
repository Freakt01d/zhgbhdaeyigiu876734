package com.example.enhancedaging;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseException;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseAuthInvalidCredentialsException;
import com.google.firebase.auth.PhoneAuthCredential;
import com.google.firebase.auth.PhoneAuthProvider;

import java.util.concurrent.TimeUnit;

public class PhoneAuth extends AppCompatActivity {

    private EditText editTextOTP;
    private Button buttonLogin;
    private String verificationId;
    private PhoneAuthProvider.ForceResendingToken resendToken;
    private FirebaseAuth firebaseAuth;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_phone_auth);

        firebaseAuth = FirebaseAuth.getInstance();

        editTextOTP = findViewById(R.id.editTextotp);
        buttonLogin = findViewById(R.id.btnLogin);

        // Receive phone number from previous activity
        String phoneNumber = getIntent().getStringExtra("phone");

        // Start phone number verification
        startPhoneNumberVerification(phoneNumber);

        buttonLogin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String otp = editTextOTP.getText().toString().trim();
                if (TextUtils.isEmpty(otp)) {
                    Toast.makeText(PhoneAuth.this, "Please enter OTP", Toast.LENGTH_SHORT).show();
                } else {
                    // Verify OTP
                    verifyPhoneNumberWithCode(verificationId, otp);
                }
            }
        });
    }

    private void startPhoneNumberVerification(String phoneNumber) {
        PhoneAuthProvider.getInstance().verifyPhoneNumber(
                phoneNumber,
                60,
                TimeUnit.SECONDS,
                this,
                new PhoneAuthProvider.OnVerificationStateChangedCallbacks() {
                    @Override
                    public void onVerificationCompleted(@NonNull PhoneAuthCredential phoneAuthCredential) {
                        // Auto-retrieval of OTP completed by Firebase
                        String code = phoneAuthCredential.getSmsCode();
                        if (code != null) {
                            editTextOTP.setText(code);
                            // Verify the code programmatically
                            verifyPhoneNumberWithCode(verificationId, code);
                        }
                    }

                    @Override
                    public void onVerificationFailed(@NonNull FirebaseException e) {
                        Toast.makeText(PhoneAuth.this, "Verification failed: " + e.getMessage(), Toast.LENGTH_SHORT).show();
                    }

                    @Override
                    public void onCodeSent(@NonNull String s, @NonNull PhoneAuthProvider.ForceResendingToken forceResendingToken) {
                        super.onCodeSent(s, forceResendingToken);
                        verificationId = s;
                        resendToken = forceResendingToken;
                    }
                });
    }

    private void verifyPhoneNumberWithCode(String verificationId, String code) {
        PhoneAuthCredential credential = PhoneAuthProvider.getCredential(verificationId, code);
        signInWithPhoneAuthCredential(credential);
    }

    private void signInWithPhoneAuthCredential(PhoneAuthCredential credential) {
        firebaseAuth.signInWithCredential(credential)
                .addOnCompleteListener(this, new OnCompleteListener() {
                    @Override
                    public void onComplete(@NonNull Task task) {
                        if (task.isSuccessful()) {
                            // Sign in success, navigate to Dashboard
                            Intent intent = new Intent(PhoneAuth.this, Dashboard.class);
                            startActivity(intent);
                            finish();
                        } else {
                            // Sign in failed
                            if (task.getException() instanceof FirebaseAuthInvalidCredentialsException) {
                                // Invalid verification code
                                Toast.makeText(PhoneAuth.this, "Invalid OTP", Toast.LENGTH_SHORT).show();
                            } else {
                                Toast.makeText(PhoneAuth.this, "Sign-in failed, please try again later", Toast.LENGTH_SHORT).show();
                            }
                        }
                    }
                });
    }
}

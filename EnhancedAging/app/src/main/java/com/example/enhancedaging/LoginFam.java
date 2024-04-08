package com.example.enhancedaging;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Patterns;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInClient;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.AuthCredential;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.GoogleAuthProvider;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

public class LoginFam extends AppCompatActivity {

    private EditText editTextEmailOrPhone;
    private Button buttonLogin, buttonGoogleSignIn;
    private FirebaseAuth firebaseAuth;
    private GoogleSignInClient googleSignInClient;
    private DatabaseReference usersRef;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login_fam);

        firebaseAuth = FirebaseAuth.getInstance();
        // Initialize your FirebaseDatabase instance with the specific database URL
        FirebaseDatabase database = FirebaseDatabase.getInstance("https://elder-aaa86-default-rtdb.asia-southeast1.firebasedatabase.app/");
        usersRef = database.getReference("families");

        editTextEmailOrPhone = findViewById(R.id.editTextUsernameOrPhoneOrEmail);
        buttonLogin = findViewById(R.id.btnLogin);
        buttonGoogleSignIn = findViewById(R.id.btnGoogleSignIn);

        GoogleSignInOptions gso = new GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN)
                .requestIdToken(getString(R.string.default_web_client_id))
                .requestEmail()
                .build();
        googleSignInClient = GoogleSignIn.getClient(this, gso);

        buttonLogin.setOnClickListener(v -> {
            String input = editTextEmailOrPhone.getText().toString().trim();
            if (TextUtils.isEmpty(input)) {
                Toast.makeText(LoginFam.this, "Please enter an email or phone number", Toast.LENGTH_SHORT).show();
            } else {
                processLogin(input);
            }
        });

        buttonGoogleSignIn.setOnClickListener(v -> signInWithGoogle());
    }

    private void processLogin(String input) {
        if (Patterns.EMAIL_ADDRESS.matcher(input).matches()) {
            Intent intent = new Intent(LoginFam.this, EmailpassFam.class);
            intent.putExtra("email", input);
            startActivity(intent);
        } else if (Patterns.PHONE.matcher(input).matches()) {
            Intent intent = new Intent(LoginFam.this, PhoneAuthFam.class);
            intent.putExtra("phone", input);
            startActivity(intent);
        } else {
            Toast.makeText(LoginFam.this, "Please enter a valid email or phone number", Toast.LENGTH_SHORT).show();
        }
    }

    private void signInWithGoogle() {
        Intent signInIntent = googleSignInClient.getSignInIntent();
        startActivityForResult(signInIntent, 100);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 100) {
            Task<GoogleSignInAccount> task = GoogleSignIn.getSignedInAccountFromIntent(data);
            try {
                GoogleSignInAccount account = task.getResult(ApiException.class);
                firebaseAuthWithGoogle(account.getIdToken());
            } catch (ApiException e) {
                Toast.makeText(this, "Google sign in failed: " + e.getMessage(), Toast.LENGTH_LONG).show();
            }
        }
    }

    private void firebaseAuthWithGoogle(String idToken) {
        AuthCredential credential = GoogleAuthProvider.getCredential(idToken, null);
        firebaseAuth.signInWithCredential(credential)
                .addOnCompleteListener(this, task -> {
                    if (task.isSuccessful()) {
                        FirebaseUser user = firebaseAuth.getCurrentUser();
                        if (user != null) {
                            checkIfUserExists(user);
                        }
                    } else {
                        Toast.makeText(LoginFam.this, "Authentication Failed.", Toast.LENGTH_SHORT).show();
                    }
                });
    }

    private void checkIfUserExists(FirebaseUser user) {
        usersRef.child(user.getUid()).addListenerForSingleValueEvent(new ValueEventListener() {
            @Override
            public void onDataChange(@NonNull DataSnapshot dataSnapshot) {
                if (dataSnapshot.exists()) {
                    Intent intent = new Intent(LoginFam.this, FamilyDashboard.class);
                    startActivity(intent);
                    finish();
                } else {
                    Intent intent = new Intent(LoginFam.this, Family_Pre_Signup.class);
                    startActivity(intent);
                    finish();
                }
            }

            @Override
            public void onCancelled(@NonNull DatabaseError databaseError){
// In case of an error or cancellation of the database read operation, log or handle it here.
                Toast.makeText(LoginFam.this, "Failed to check user data: " + databaseError.getMessage(), Toast.LENGTH_SHORT).show();
            }
        });
    }
}



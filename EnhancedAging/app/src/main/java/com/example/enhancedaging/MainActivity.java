package com.example.enhancedaging;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Connect the "Login as Elder" button
        Button buttonLoginElder = findViewById(R.id.btnLoginElder);
        buttonLoginElder.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Create an Intent to open the Elder Login activity
                Intent intent = new Intent(MainActivity.this, LoginEld.class);
                startActivity(intent);
            }
        });

        Button buttonLoginFamily = findViewById(R.id.btnLoginFamily);
        buttonLoginFamily.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Create an Intent to open the Elder Login activity
                Intent intent = new Intent(MainActivity.this, LoginFam.class);
                startActivity(intent);
            }
        });

        Button buttonSignupElder = findViewById(R.id.btnSignUpElder);
        buttonSignupElder.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Create an Intent to open the Elder Login activity
                Intent intent = new Intent(MainActivity.this, ElderSignupPre.class);
                startActivity(intent);
            }
        });
        Button buttonSignupFamily = findViewById(R.id.btnSignUpFamily);
        buttonSignupFamily.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Create an Intent to open the Elder Login activity
                Intent intent = new Intent(MainActivity.this, Family_Pre_Signup.class);
                startActivity(intent);
            }
        });


        // Connect the "Connect with Us" button
        Button buttonConnectWithUs = findViewById(R.id.btnConnectWithUs);
        buttonConnectWithUs.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Create an Intent to open the new activity
                Intent intent = new Intent(MainActivity.this, MainActivity2.class);
                startActivity(intent);
            }
        });
    }
}

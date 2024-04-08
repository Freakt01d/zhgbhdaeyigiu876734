package com.example.enhancedaging;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;

import androidx.appcompat.app.AppCompatActivity;

import com.example.enhancedaging.chatbot.ChatbotMain;

public class Dashboard extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_dashboard);

        // Find the ImageButton by its ID
        ImageButton openMenuButton = findViewById(R.id.imageButton2);
        ImageButton openMenuButton1 = findViewById(R.id.imageButton1);
        ImageButton openMenuButton2 = findViewById(R.id.imageButton3);
        ImageButton openMenuButton3 = findViewById(R.id.imageButton4);

        // Set an OnClickListener to the ImageButton
        openMenuButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the Menu_1 activity when the ImageButton is clicked
                startActivity(new Intent(Dashboard.this, Menu_1.class));
            }
        });

        openMenuButton2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the Menu_1 activity when the ImageButton is clicked
                startActivity(new Intent(Dashboard.this, Messenger.class));
            }
        });

        openMenuButton1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the Menu_1 activity when the ImageButton is clicked
                Intent intent = new Intent(Dashboard.this, ProfileView.class);
                startActivity(intent);
            }
        });

        openMenuButton3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the Menu_1 activity when the ImageButton is clicked
                startActivity(new Intent(Dashboard.this, ChatbotMain.class));
            }
        });
    }
}

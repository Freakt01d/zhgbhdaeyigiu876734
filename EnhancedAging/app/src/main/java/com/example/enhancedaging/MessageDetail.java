package com.example.enhancedaging;

import android.os.Bundle;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;

public class MessageDetail extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_message_detail);

        TextView detailTextView = findViewById(R.id.detailTextView);

        String message = getIntent().getStringExtra("message");
        detailTextView.setText(message);
    }
}

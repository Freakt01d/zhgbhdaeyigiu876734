package com.example.enhancedaging;

import android.Manifest;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Messenger extends AppCompatActivity {

    private static final int PERMISSIONS_REQUEST_READ_SMS = 1;
    private static final int PERMISSIONS_REQUEST_READ_CONTACTS = 2;
    private static final String URL_REGEX = "\\b((https?|ftp|file)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|])";

    private DatabaseHelper_mes dbHelper;
    private LinearLayout messageLayout;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_messenger);

        dbHelper = new DatabaseHelper_mes(this);
        messageLayout = findViewById(R.id.messageLayout);

        // Request permissions for reading SMS and contacts
        if (ContextCompat.checkSelfPermission(this, Manifest.permission.READ_SMS) != PackageManager.PERMISSION_GRANTED ||
                ContextCompat.checkSelfPermission(this, Manifest.permission.READ_CONTACTS) != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.READ_SMS, Manifest.permission.READ_CONTACTS}, PERMISSIONS_REQUEST_READ_SMS);
        } else {
            // Permissions granted, load messages
            loadMessages();
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == PERMISSIONS_REQUEST_READ_SMS) {
            if (grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                // SMS permission granted, check contacts permission
                if (ContextCompat.checkSelfPermission(this, Manifest.permission.READ_CONTACTS) != PackageManager.PERMISSION_GRANTED) {
                    ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.READ_CONTACTS}, PERMISSIONS_REQUEST_READ_CONTACTS);
                } else {
                    // Contacts permission granted, load messages
                    loadMessages();
                }
            } else {
                // Permission denied, show toast or handle accordingly
                Toast.makeText(this, "Permission denied to read SMS", Toast.LENGTH_SHORT).show();
            }
        } else if (requestCode == PERMISSIONS_REQUEST_READ_CONTACTS) {
            if (grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                // Contacts permission granted, reload messages
                loadMessages();
            } else {
                // Permission denied, show toast or handle accordingly
                Toast.makeText(this, "Permission denied to read contacts", Toast.LENGTH_SHORT).show();
            }
        }
    }

    private void loadMessages() {
        messageLayout.removeAllViews(); // Clear existing messages
        Uri uriSms = Uri.parse("content://sms/inbox");
        Cursor cursor = getContentResolver().query(uriSms, new String[]{"_id", "address", "date", "body"}, null, null, null);

        if (cursor != null && cursor.moveToFirst()) {
            do {
                String address = cursor.getString(1);
                String body = cursor.getString(3);

                // Check if message should be displayed
                if (shouldDisplayMessage(body)) {
                    TextView textView = new TextView(this);
                    textView.setText(String.format("%s: %s", address, body));
                    textView.setTextSize(18);
                    textView.setPadding(16, 16, 16, 16);
                    textView.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            Intent intent = new Intent(Messenger.this, MessageDetail.class);
                            intent.putExtra("message", body);
                            startActivity(intent);
                        }
                    });
                    messageLayout.addView(textView);
                }

            } while (cursor.moveToNext());
        }
        if (cursor != null) {
            cursor.close();
        }
    }

    private boolean shouldDisplayMessage(String message) {
        List<String> urls = extractUrls(message);
        for (String url : urls) {
            if (dbHelper.isUrlWhitelisted(url)) {
                return true; // Whitelisted URL
            } else if (dbHelper.isUrlBlacklisted(url)) {
                return false; // Blacklisted URL
            }
        }
        return new Random().nextBoolean(); // Random decision if not in whitelist or blacklist
    }

    private List<String> extractUrls(String text) {
        List<String> containedUrls = new ArrayList<>();
        Pattern pattern = Pattern.compile(URL_REGEX, Pattern.CASE_INSENSITIVE);
        Matcher urlMatcher = pattern.matcher(text);
        while (urlMatcher.find()) {
            containedUrls.add(text.substring(urlMatcher.start(0), urlMatcher.end(0)));
        }
        return containedUrls;
    }
}

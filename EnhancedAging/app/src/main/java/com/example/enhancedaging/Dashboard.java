package com.example.enhancedaging;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.ImageView;

import androidx.appcompat.app.AppCompatActivity;

import com.example.enhancedaging.chatbot.ChatbotMain;
import com.example.enhancedaging.fall_detection.MainActivity4;

public class Dashboard extends AppCompatActivity {
    private int[] wallpaperList = { R.drawable.w3,R.drawable.w4,R.drawable.w5,R.drawable.w6,R.drawable.w7,R.drawable.w8,R.drawable.w10,
            R.drawable.w11,R.drawable.w12};
    private int currentWallpaperIndex = 0;
    private Handler handler;
    private ImageView imageView;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_dashboard);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            Window window = getWindow();
            window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
            window.setStatusBarColor(getResources().getColor(R.color.light_pink)); // Change "your_color" to your desired color resource
        }

        // Find the ImageButton by its ID
        ImageButton openMenuButton = findViewById(R.id.imageButton2);
        ImageButton openMenuButton1 = findViewById(R.id.imageButton1);
        ImageButton openMenuButton2 = findViewById(R.id.imageButton3);
        ImageButton openMenuButton3 = findViewById(R.id.imageButton4);
        ImageButton openMenuButton5 = findViewById(R.id.profileImageView);
        ImageButton openMenuButton6 = findViewById(R.id.imageButton_2);
        ImageButton openMenuButton7 = findViewById(R.id.imageButton5);
        ImageButton openMenuButton8 = findViewById(R.id.imageButton7);
        ImageButton openMenuButton9 = findViewById(R.id.roundButton);
        ImageButton openMenuButton10 = findViewById(R.id.imageButton_1);
        ImageButton openMenuButton11 = findViewById(R.id.imageButton_3);
        ImageButton openMenuButton12 = findViewById(R.id.imageButton_4);
        ImageButton openMenuButton13 = findViewById(R.id.supportButton);
        ImageButton openMenuButton14 = findViewById(R.id.imageButton6);






        imageView = findViewById(R.id.quotes_imv);
        handler = new Handler();

        // Schedule the wallpaper change every 10 minutes
        handler.postDelayed(changeWallpaperRunnable, 10  * 1000);

        // Set an OnClickListener to the ImageButton
        openMenuButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the Menu_1 activity when the ImageButton is clicked
                startActivity(new Intent(Dashboard.this, Menu_1.class));
            }
        });
        openMenuButton14.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the Menu_1 activity when the ImageButton is clicked
                startActivity(new Intent(Dashboard.this, Menu_1.class));
            }
        });
        openMenuButton8.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the Menu_1 activity when the ImageButton is clicked
                startActivity(new Intent(Dashboard.this, ProfileView.class));
            }
        });
        openMenuButton13.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the Menu_1 activity when the ImageButton is clicked
                startActivity(new Intent(Dashboard.this, MainActivity2.class));
            }
        });
        openMenuButton10.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the Menu_1 activity when the ImageButton is clicked
                startActivity(new Intent(Dashboard.this, MedicationManagement.class));
            }
        });
        openMenuButton12.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the Menu_1 activity when the ImageButton is clicked
                startActivity(new Intent(Dashboard.this, MedicationManagement.class));
            }
        });
        openMenuButton11.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the Menu_1 activity when the ImageButton is clicked
                startActivity(new Intent(Dashboard.this, MedicationManagement.class));
            }
        });
        openMenuButton9.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the Menu_1 activity when the ImageButton is clicked
                startActivity(new Intent(Dashboard.this, MainActivity4.class));
            }
        });
        openMenuButton7.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the Menu_1 activity when the ImageButton is clicked
                startActivity(new Intent(Dashboard.this, Messenger.class));
            }
        });

        openMenuButton6.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the Menu_1 activity when the ImageButton is clicked
                startActivity(new Intent(Dashboard.this, ChatbotMain.class));
            }
        });
        openMenuButton5.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Start the Menu_1 activity when the ImageButton is clicked
                startActivity(new Intent(Dashboard.this, ProfileView.class));
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

    // Runnable to change wallpaper
    private Runnable changeWallpaperRunnable = new Runnable() {
        @Override
        public void run() {
            changeWallpaper();
            // Schedule the next wallpaper change
            handler.postDelayed(this, 10 * 1000);
        }
    };
    // Method to change wallpaper
    private void changeWallpaper() {
        currentWallpaperIndex = (currentWallpaperIndex + 1) % wallpaperList.length;
        imageView.setImageResource(wallpaperList[currentWallpaperIndex]);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        // Remove any pending callbacks to avoid memory leaks
        handler.removeCallbacks(changeWallpaperRunnable);
    }
}

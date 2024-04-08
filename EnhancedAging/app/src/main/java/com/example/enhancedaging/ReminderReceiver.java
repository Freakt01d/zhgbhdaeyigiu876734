package com.example.enhancedaging;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

public class ReminderReceiver extends BroadcastReceiver {

    @Override
    public void onReceive(Context context, Intent intent) {
        // Trigger notification here
        Toast.makeText(context, "It's time to take your medicine.", Toast.LENGTH_SHORT).show();
    }
}

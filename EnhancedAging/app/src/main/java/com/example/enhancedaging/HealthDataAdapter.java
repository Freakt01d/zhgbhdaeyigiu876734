package com.example.enhancedaging;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.Date;
import java.util.List;
import java.util.Locale;

public class HealthDataAdapter extends RecyclerView.Adapter<HealthDataAdapter.HealthDataViewHolder> {

    private Context context; // Context to inflate the layout
    private List<HealthData> healthDataList; // List of health data items

    // Constructor
    public HealthDataAdapter(Context context, List<HealthData> healthDataList) {
        this.context = context;
        this.healthDataList = healthDataList;
    }

    @NonNull
    @Override
    public HealthDataViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        // Inflate the custom layout
        View itemView = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_health_data, parent, false);
        return new HealthDataViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(@NonNull HealthDataViewHolder holder, int position) {
        // Get the data model based on position
        HealthData healthData = healthDataList.get(position);

        // Set item views based on the data model
        String dateString = android.text.format.DateFormat.format("dd/MM/yyyy", new Date(healthData.getTimestamp())).toString();
        holder.timestampTextView.setText(dateString);
        holder.weightTextView.setText(String.format(Locale.getDefault(), "%.2f kg", healthData.getWeight()));

        if (healthData.getSpo2() != null) {
            holder.spo2TextView.setText(String.format(Locale.getDefault(), "%.1f%%", healthData.getSpo2()));
        } else {
            holder.spo2TextView.setText("N/A");
        }

        if (healthData.getHeartRate() != null) {
            holder.heartRateTextView.setText(String.format(Locale.getDefault(), "%.1f bpm", healthData.getHeartRate()));
        } else {
            holder.heartRateTextView.setText("N/A");
        }

        holder.bloodPressureTextView.setText(healthData.getBloodPressure() != null ? healthData.getBloodPressure() : "N/A");
    }

    @Override
    public int getItemCount() {
        // Return the total count of items
        return healthDataList.size();
    }

    // Provide a direct reference to each of the views within a data item
    public static class HealthDataViewHolder extends RecyclerView.ViewHolder {
        public TextView timestampTextView, weightTextView, spo2TextView, heartRateTextView, bloodPressureTextView;

        public HealthDataViewHolder(@NonNull View itemView) {
            super(itemView);
            // Initialize the views
            timestampTextView = itemView.findViewById(R.id.timestampTextView);
            weightTextView = itemView.findViewById(R.id.weightTextView);
            spo2TextView = itemView.findViewById(R.id.spo2TextView);
            heartRateTextView = itemView.findViewById(R.id.heartRateTextView);
            bloodPressureTextView = itemView.findViewById(R.id.bloodPressureTextView);
        }
    }
}

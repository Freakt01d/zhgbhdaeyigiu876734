package com.example.enhancedaging;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;

import java.util.List;
import java.util.Objects;

public class ReportAdapter extends ListAdapter<Report, ReportAdapter.ReportViewHolder> {

    private Context context;

    public ReportAdapter() {
        super(DIFF_CALLBACK);
    }

    @NonNull
    @Override
    public ReportViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        context = parent.getContext();
        View itemView = LayoutInflater.from(context).inflate(R.layout.item_report, parent, false);
        return new ReportViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(@NonNull ReportViewHolder holder, int position) {
        Report currentReport = getItem(position);
        holder.bind(currentReport);
    }

    public void setReports(List<Report> reports) {
        submitList(reports);
    }

    class ReportViewHolder extends RecyclerView.ViewHolder {
        TextView textViewHospitalName;
        TextView textViewDescription;
        TextView textViewTimestamp;
        ImageView imageViewReport;

        ReportViewHolder(View itemView) {
            super(itemView);
            textViewHospitalName = itemView.findViewById(R.id.hospitalNameTextView);
            textViewDescription = itemView.findViewById(R.id.descriptionTextView);
            textViewTimestamp = itemView.findViewById(R.id.timestampTextView);
            imageViewReport = itemView.findViewById(R.id.reportImageView);
        }

        void bind(Report report) {
            textViewHospitalName.setText(report.getHospitalName());
            textViewDescription.setText(report.getDescription());
            textViewTimestamp.setText(report.getTimestamp().toDate().toString()); // Format this as needed
            Glide.with(context)
                    .load(report.getImageUrl())
                    .placeholder(R.drawable.img) // Placeholder image
                    .error(R.drawable.img_8) // Error placeholder
                    .into(imageViewReport);

            // Set click listener for the image view to open fullscreen activity
            imageViewReport.setOnClickListener(view -> {
                Intent intent = new Intent(context, FullscreenImageActivity.class);
                intent.putExtra("image_url", report.getImageUrl());
                context.startActivity(intent);
            });
        }
    }

    private static final DiffUtil.ItemCallback<Report> DIFF_CALLBACK = new DiffUtil.ItemCallback<Report>() {
        @Override
        public boolean areItemsTheSame(@NonNull Report oldItem, @NonNull Report newItem) {
            return Objects.equals(oldItem.getTimestamp(), newItem.getTimestamp());
        }

        @SuppressLint("DiffUtilEquals")
        @Override
        public boolean areContentsTheSame(@NonNull Report oldItem, @NonNull Report newItem) {
            return oldItem.equals(newItem);
        }
    };
}

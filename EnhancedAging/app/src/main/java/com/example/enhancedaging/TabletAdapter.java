package com.example.enhancedaging;

import android.annotation.SuppressLint;
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
import com.bumptech.glide.load.engine.DiskCacheStrategy;

public class TabletAdapter extends ListAdapter<Tablet, RecyclerView.ViewHolder> {

    TabletAdapter() {
        super(DIFF_CALLBACK);
    }

    @NonNull
    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.item_tablet, parent, false);
        return new RecyclerView.ViewHolder(itemView) {};
    }

    @Override
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder holder, int position) {
        Tablet currentTablet = getItem(position);

        TextView textViewName = holder.itemView.findViewById(R.id.text_view_name);
        TextView textViewDosage = holder.itemView.findViewById(R.id.text_view_dosage);
        TextView textViewFrequency = holder.itemView.findViewById(R.id.text_view_frequency);
        TextView textViewSchedule = holder.itemView.findViewById(R.id.text_view_schedule);
        TextView textViewIntakeTime = holder.itemView.findViewById(R.id.text_view_intake_time);
        ImageView imageViewMedicationTime = holder.itemView.findViewById(R.id.imageViewMedicationTime);

        textViewName.setText(currentTablet.getName());
        textViewDosage.setText(currentTablet.getDosage());
        textViewFrequency.setText(currentTablet.getFrequency());
        textViewSchedule.setText(currentTablet.getIntakeSchedule());
        textViewIntakeTime.setText(currentTablet.getIntakeTime());

        Glide.with(holder.itemView.getContext())
                .load(currentTablet.getImageUrl())
                .diskCacheStrategy(DiskCacheStrategy.ALL)
                .placeholder(R.drawable.img)
                .error(R.drawable.img_1)
                .into(imageViewMedicationTime);

        imageViewMedicationTime.setOnClickListener(view -> {
            Intent intent = new Intent(holder.itemView.getContext(), FullscreenImageActivity.class);
            intent.putExtra("image_url", currentTablet.getImageUrl());
            holder.itemView.getContext().startActivity(intent);
        });
    }

    private static final DiffUtil.ItemCallback<Tablet> DIFF_CALLBACK = new DiffUtil.ItemCallback<Tablet>() {
        @Override
        public boolean areItemsTheSame(@NonNull Tablet oldItem, @NonNull Tablet newItem) {
            return oldItem.getId().equals(newItem.getId());
        }

        @SuppressLint("DiffUtilEquals")
        @Override
        public boolean areContentsTheSame(@NonNull Tablet oldItem, @NonNull Tablet newItem) {
            return oldItem.equals(newItem);
        }
    };
}

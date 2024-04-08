package com.example.enhancedaging;

import android.os.Bundle;

import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

public class tabletmain extends AppCompatActivity {

    private TabletViewModel tabletViewModel;
    private TabletAdapter tabletAdapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tabletmain);

        // Receive elder's email from intent
        String elderEmail = getIntent().getStringExtra("ELDER_EMAIL");

        // Initialize ViewModel
        tabletViewModel = new ViewModelProvider(this).get(TabletViewModel.class);

        // Initialize RecyclerView and adapter
        RecyclerView recyclerView = findViewById(R.id.recyclerViewTablets);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setHasFixedSize(true);
        tabletAdapter = new TabletAdapter();
        recyclerView.setAdapter(tabletAdapter);

        // Observe changes in tablet data and update the UI
        tabletViewModel.getAllTablets(elderEmail).observe(this, tablets -> {
            tabletAdapter.submitList(tablets);
        });
    }
}

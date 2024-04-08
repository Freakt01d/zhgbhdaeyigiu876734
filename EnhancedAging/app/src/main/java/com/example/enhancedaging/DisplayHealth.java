package com.example.enhancedaging;

import android.os.Bundle;
import android.util.Log;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.QueryDocumentSnapshot;
import com.google.firebase.firestore.QuerySnapshot;

import java.util.ArrayList;
import java.util.List;

public class DisplayHealth extends AppCompatActivity {

    private RecyclerView recyclerView;
    private HealthDataAdapter adapter;
    private List<HealthData> healthDataList = new ArrayList<>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_display_health);

        recyclerView = findViewById(R.id.recyclerViewHealthTracking);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        adapter = new HealthDataAdapter(this, healthDataList);
        recyclerView.setAdapter(adapter);

        fetchHealthDataFromFirestore();
    }

    private void fetchHealthDataFromFirestore() {
        // Retrieve the email from the intent; use the current user's email as a fallback
        String emailToQuery = getIntent().getStringExtra("ElderMail");
        if (emailToQuery == null || emailToQuery.isEmpty()) {
            emailToQuery = FirebaseAuth.getInstance().getCurrentUser().getEmail();
        }

        FirebaseFirestore db = FirebaseFirestore.getInstance();
        db.collection("elders")
                .document(emailToQuery)
                .collection("healthData")
                .get()
                .addOnCompleteListener(new OnCompleteListener<QuerySnapshot>() {
                    @Override
                    public void onComplete(@NonNull Task<QuerySnapshot> task) {
                        if (task.isSuccessful()) {
                            healthDataList.clear(); // Clear the old data
                            for (QueryDocumentSnapshot document : task.getResult()) {
                                HealthData data = document.toObject(HealthData.class);
                                healthDataList.add(data);
                            }
                            adapter.notifyDataSetChanged(); // Notify the adapter to refresh the view
                        } else {
                            Log.w("DisplayHealth", "Error getting documents.", task.getException());
                        }
                    }
                });
    }
}

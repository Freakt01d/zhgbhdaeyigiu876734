// DisplayActivity.java
package com.example.enhancedaging;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.firestore.DocumentSnapshot;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.QuerySnapshot;

import java.util.ArrayList;
import java.util.List;

public class DisplayPres extends AppCompatActivity {

    private RecyclerView recyclerView;
    private ReportAdapter adapter;
    private String elderEmail;
    private FirebaseFirestore db;

    @SuppressLint("MissingInflatedId")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_display);

        recyclerView = findViewById(R.id.recyclerViewReports);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        adapter = new ReportAdapter();
        recyclerView.setAdapter(adapter);

        db = FirebaseFirestore.getInstance();
        elderEmail = getIntent().getStringExtra("ElderMail");

        fetchAndDisplayReports();
    }

    private void fetchAndDisplayReports() {
        db.collection("elders")
                .document(elderEmail)
                .collection("prescriptions")
                .orderBy("timestamp")
                .get()
                .addOnCompleteListener(new OnCompleteListener<QuerySnapshot>() {
                    @Override
                    public void onComplete(@NonNull Task<QuerySnapshot> task) {
                        if (task.isSuccessful() && task.getResult() != null) {
                            List<Report> reports = new ArrayList<>();
                            for (DocumentSnapshot document : task.getResult()) {
                                Report report = document.toObject(Report.class);
                                reports.add(report);
                            }
                            adapter.setReports(reports);
                        } else {
                            Toast.makeText(DisplayPres.this, "Failed to fetch reports", Toast.LENGTH_SHORT).show();
                        }
                    }
                });
    }
}

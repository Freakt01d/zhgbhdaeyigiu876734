package com.example.enhancedaging.data;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;

import com.example.enhancedaging.Tablet;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.QueryDocumentSnapshot;

import java.util.ArrayList;
import java.util.List;

public class TabletRepository {
    private FirebaseFirestore db = FirebaseFirestore.getInstance();
    private MutableLiveData<List<Tablet>> allTablets = new MutableLiveData<>();

    public TabletRepository() {
        loadAllTablets();
    }

    public LiveData<List<Tablet>> getAllTablets() {
        return allTablets;
    }

    private void loadAllTablets() {
        db.collection("tablets").get().addOnSuccessListener(queryDocumentSnapshots -> {
            List<Tablet> tablets = new ArrayList<>();
            for (QueryDocumentSnapshot documentSnapshot : queryDocumentSnapshots) {
                Tablet tablet = documentSnapshot.toObject(Tablet.class);
                tablets.add(tablet);
            }
            allTablets.setValue(tablets);
        });
    }

    public void insert(Tablet tablet) {
        db.collection("tablets").add(tablet);
    }

    public void update(Tablet tablet) {
        db.collection("tablets").document(tablet.getId()).set(tablet);
    }

    public void delete(Tablet tablet) {
        db.collection("tablets").document(tablet.getId()).delete();
    }
}

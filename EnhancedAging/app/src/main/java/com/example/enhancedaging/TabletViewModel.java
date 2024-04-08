package com.example.enhancedaging;

import android.app.Application;

import androidx.annotation.NonNull;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;

import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.QueryDocumentSnapshot;

import java.util.ArrayList;
import java.util.List;

public class TabletViewModel extends AndroidViewModel {
    private MutableLiveData<List<Tablet>> allTablets = new MutableLiveData<>();
    private FirebaseFirestore db = FirebaseFirestore.getInstance();

    public TabletViewModel(@NonNull Application application) {
        super(application);
        // Optionally initialize your Firestore instance here if needed
    }

    public LiveData<List<Tablet>> getAllTablets(String elderEmail) {
        db.collection("elders")
                .document(elderEmail)
                .collection("tablets")
                .addSnapshotListener((value, error) -> {
                    if (error != null) {
                        // Handle the error
                        return;
                    }

                    List<Tablet> tabletsList = new ArrayList<>();
                    for (QueryDocumentSnapshot doc : value) {
                        Tablet tablet = doc.toObject(Tablet.class);
                        tabletsList.add(tablet);
                    }
                    allTablets.setValue(tabletsList);
                });
        return allTablets;
    }

    public void insertTablet(Tablet tablet, String elderEmail) {
        db.collection("elders")
                .document(elderEmail)
                .collection("tablets")
                .add(tablet)
                .addOnSuccessListener(documentReference -> {
                    // Successfully added the document
                })
                .addOnFailureListener(e -> {
                    // Handle the error
                });
    }

    // Similarly, you can add methods to update and delete tablets
}

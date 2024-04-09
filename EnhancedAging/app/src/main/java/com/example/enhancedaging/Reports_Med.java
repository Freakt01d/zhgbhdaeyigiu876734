package com.example.enhancedaging;

import android.Manifest;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.PopupMenu;
import android.widget.Toast;

import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.google.firebase.firestore.FieldValue;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.storage.FirebaseStorage;
import com.google.firebase.storage.StorageReference;
import com.google.firebase.storage.UploadTask;

import java.util.HashMap;
import java.util.Map;

public class Reports_Med extends AppCompatActivity {

    private EditText hospitalNameEditText;
    private EditText descriptionEditText;
    private Button addPictureButton;
    private Button saveButton;
    private Button displayButton;

    private Uri imageUri;

    private FirebaseFirestore db;

    private String elderEmail;

    private ActivityResultLauncher<Intent> cameraLauncher;
    private ActivityResultLauncher<Intent> galleryLauncher;
    private ActivityResultLauncher<String> requestPermissionLauncher;

    private RecyclerView recyclerView;
    private ReportAdapter adapter;
    private StorageReference storageReference;


    @SuppressLint("MissingInflatedId")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_prescription);

        // Initialize Firebase Firestore
        
        db = FirebaseFirestore.getInstance();
        FirebaseStorage storage = FirebaseStorage.getInstance();
        storageReference = storage.getReference();




        // Initialize views
        hospitalNameEditText = findViewById(R.id.hospitalNameEditText);
        descriptionEditText = findViewById(R.id.descriptionEditText);
        addPictureButton = findViewById(R.id.addPictureButton);
        saveButton = findViewById(R.id.saveButton);
        displayButton = findViewById(R.id.displayButton);
        recyclerView = findViewById(R.id.reportsRecyclerView);

        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        adapter = new ReportAdapter(); // Adapter instantiated without any arguments
        recyclerView.setAdapter(adapter);

        // Set up ActivityResultLaunchers
        setupCameraLauncher();
        setupGalleryLauncher();
        setupPermissionLauncher();

        // Retrieve elder's email from intent extras
        elderEmail = getIntent().getStringExtra("ElderMail");

        // Set onClickListener to show popup menu
        addPictureButton.setOnClickListener(this::showPopupMenu);

        // Set onClickListener for the save button
        saveButton.setOnClickListener(this::onSaveButtonClicked);

        // Set onClickListener for the display button
        displayButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                // Intent to start DisplayActivity
                Intent displayIntent = new Intent(Reports_Med.this, DisplayPres.class);

                // Check if elderEmail is not null or empty
                if (elderEmail != null && !elderEmail.isEmpty()) {
                    // Pass the elder's email as an intent extra to DisplayActivity
                    displayIntent.putExtra("ElderMail", elderEmail);
                    // Start DisplayActivity
                    startActivity(displayIntent);
                } else {
                    // Handle the case where elder's email is not available
                    Toast.makeText(Reports_Med.this, "Elder's email is not available.", Toast.LENGTH_SHORT).show();
                }
            }
        });
    }

    private void setupCameraLauncher() {
        cameraLauncher = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), result -> {
            if (result.getResultCode() == Activity.RESULT_OK && result.getData() != null && result.getData().getData() != null) {
                imageUri = result.getData().getData();
            }
        });
    }

    private void setupGalleryLauncher() {
        galleryLauncher = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), result -> {
            if (result.getResultCode() == Activity.RESULT_OK && result.getData() != null) {
                imageUri = result.getData().getData();
            }
        });
    }

    private void setupPermissionLauncher() {
        requestPermissionLauncher = registerForActivityResult(new ActivityResultContracts.RequestPermission(), isGranted -> {
            if (isGranted) {
                takePicture();
            } else {
                Toast.makeText(this, "Camera permission is required to use the camera feature.", Toast.LENGTH_SHORT).show();
            }
        });
    }

    private void showPopupMenu(View v) {
        PopupMenu popupMenu = new PopupMenu(this, v);
        popupMenu.getMenuInflater().inflate(R.menu.menu_popup, popupMenu.getMenu());

        popupMenu.setOnMenuItemClickListener(item -> {
            if (item.getItemId() == R.id.menu_choose) {
                openGallery();
                return true;
            } else if (item.getItemId() == R.id.menu_take_picture) {
                checkCameraPermission();
                return true;
            }
            return false;
        });
        popupMenu.show();
    }

    private void checkCameraPermission() {
        if (ContextCompat.checkSelfPermission(this, Manifest.permission.CAMERA) == PackageManager.PERMISSION_GRANTED) {
            takePicture();
        } else {
            requestPermissionLauncher.launch(Manifest.permission.CAMERA);
        }
    }

    private void openGallery() {
        Intent galleryIntent = new Intent(Intent.ACTION_PICK, MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        galleryLauncher.launch(galleryIntent);
    }

    private void takePicture() {
        Intent takePictureIntent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
        if (takePictureIntent.resolveActivity(getPackageManager()) != null) {
            cameraLauncher.launch(takePictureIntent);
        } else {
            Toast.makeText(this, "Unable to open camera", Toast.LENGTH_SHORT).show();
        }
    }

    private void onSaveButtonClicked(View view) {
        String hospitalName = hospitalNameEditText.getText().toString().trim();
        String description = descriptionEditText.getText().toString().trim();

        if (elderEmail != null && !elderEmail.isEmpty()) {
            if (!hospitalName.isEmpty() && !description.isEmpty()) {
                // If image is selected, upload it to cloud storage
                if (imageUri != null) {
                    uploadImageAndSaveReport(hospitalName, description);
                } else {
                    saveReportToFirestore(hospitalName, description, null); // Proceed without image URL
                }
            } else {
                Toast.makeText(this, "Please enter hospital name and description", Toast.LENGTH_SHORT).show();
            }
        } else {
            Toast.makeText(this, "Elder email is not available", Toast.LENGTH_SHORT).show();
        }
    }

    private void uploadImageAndSaveReport(String hospitalName, String description) {

        StorageReference fileRef = storageReference.child("images/" + System.currentTimeMillis() + ".jpg");
        UploadTask uploadTask = fileRef.putFile(imageUri);
        uploadTask.continueWithTask(task -> {
            if (!task.isSuccessful()) {
                throw task.getException();
            }
            return fileRef.getDownloadUrl();
        }).addOnCompleteListener(task -> {
            if (task.isSuccessful()) {
                Uri downloadUri = task.getResult();
                String imageUrl = downloadUri.toString();
                saveReportToFirestore(hospitalName, description, imageUrl);
            } else {
                Toast.makeText(Reports_Med.this, "Failed to upload image", Toast.LENGTH_SHORT).show();
            }
        });
    }

    private void saveReportToFirestore(String hospitalName, String description, String imageUrl) {
        Map<String, Object> reportMap = new HashMap<>();
        reportMap.put("hospitalName", hospitalName);
        reportMap.put("description", description);
        reportMap.put("timestamp", FieldValue.serverTimestamp());
        // Include the image URL if available
        if (imageUrl != null) {
            reportMap.put("imageUrl", imageUrl);
        }

        // Add the report to Firestore under the elder's document in the "reports" collection
        db.collection("elders")
                .document(elderEmail)
                .collection("reports")
                .add(reportMap)
                .addOnSuccessListener(documentReference -> Toast.makeText(Reports_Med.this, "Report saved successfully", Toast.LENGTH_SHORT).show())
                .addOnFailureListener(e -> Toast.makeText(Reports_Med.this, "Error saving report", Toast.LENGTH_SHORT).show());
    }

   //private void fetchAndDisplayReports() {
   //     db.collection("elders")
    //            .document(elderEmail)
   //             .collection("reports")
    //            .orderBy("timestamp")
     //           .get()
      //          .addOnCompleteListener(task -> {
    //                if (task.isSuccessful() && task.getResult() != null) {
     //                   List<Report> reports = new ArrayList<>();
      //                  for (QueryDocumentSnapshot document : task.getResult()) {
      //                      Report report = document.toObject(Report.class);
      //                      reports.add(report);
       //                 }
       //                 adapter.setReports(reports);
       //             } else {
       //                 Toast.makeText(Reports_Med.this, "Failed to fetch reports", Toast.LENGTH_SHORT).show();
      //              }
      //          });
    //}
}

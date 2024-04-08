package com.example.enhancedaging;

import android.Manifest;
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
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.Toast;

import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.enhancedaging.databinding.ActivityMedicInnerBinding;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.storage.FirebaseStorage;
import com.google.firebase.storage.StorageReference;
import com.google.firebase.storage.UploadTask;

import java.util.HashMap;
import java.util.Map;

public class MedicInner extends AppCompatActivity {

    private ActivityMedicInnerBinding binding;

    private EditText editTextTabletName;
    private EditText editTextDosage;

    private Spinner spinnerFrequency;
    private Spinner spinnerIntakeSchedule;
    private RadioGroup radioGroupIntake;
    private RadioButton radioButtonBefore;
    private RadioButton radioButtonAfter;

    private TabletViewModel tabletViewModel;
    private TabletAdapter tabletAdapter;

    private ActivityResultLauncher<Intent> cameraLauncher;
    private ActivityResultLauncher<Intent> galleryLauncher;

    private ActivityResultLauncher<String> requestPermissionLauncher;
    private FirebaseFirestore db;
    private FirebaseStorage storage;
    private StorageReference storageReference;
    private Uri imageUri;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        binding = ActivityMedicInnerBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        // Initialize Firebase components
        db = FirebaseFirestore.getInstance();
        storage = FirebaseStorage.getInstance();
        storageReference = storage.getReference();

        // Initialize views
        editTextTabletName = findViewById(R.id.editTextTabletName);
        editTextDosage = findViewById(R.id.editTextDosage);
        spinnerFrequency = findViewById(R.id.spinnerFrequency);
        spinnerIntakeSchedule = findViewById(R.id.spinnerIntakeSchedule);
        radioGroupIntake = findViewById(R.id.radioGroupIntake);
        radioButtonBefore = findViewById(R.id.radioButtonBefore);
        radioButtonAfter = findViewById(R.id.radioButtonAfter);

        // Initialize ViewModel
        tabletViewModel = new ViewModelProvider(this).get(TabletViewModel.class);

        // Set up ActivityResultLaunchers
        setupCameraLauncher();
        setupGalleryLauncher();
        setupPermissionLauncher();

        // Set up RecyclerView and Adapter
        RecyclerView recyclerView = findViewById(R.id.recyclerViewTablets);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setHasFixedSize(true);
        tabletAdapter = new TabletAdapter();
        recyclerView.setAdapter(tabletAdapter);

        // Set onClickListener to show popup menu
        binding.buttonShowMenu.setOnClickListener(this::showPopupMenu);

        Button saveTabButton = findViewById(R.id.SaveTab);
        saveTabButton.setOnClickListener(this::onSaveButtonClicked);

        Button displayButton = findViewById(R.id.Disp);
        displayButton.setOnClickListener(v -> {
            // Retrieve the current user inside the click listener
            FirebaseUser currentUser = FirebaseAuth.getInstance().getCurrentUser();
            if (currentUser != null && currentUser.getEmail() != null) {
                Intent intent = new Intent(MedicInner.this, tabletmain.class);
                // Pass the elder's email
                intent.putExtra("ELDER_EMAIL", currentUser.getEmail());
                startActivity(intent);
            } else {
                // Handle the case where there is no user logged in
                Toast.makeText(MedicInner.this, "No user logged in", Toast.LENGTH_SHORT).show();
            }
        });
    }

    private void setupCameraLauncher() {
        cameraLauncher = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), result -> {
            if (result.getResultCode() == Activity.RESULT_OK) {
                imageUri = result.getData().getData();
            }
        });
    }

    private void setupGalleryLauncher() {
        galleryLauncher = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), result -> {
            if (result.getResultCode() == Activity.RESULT_OK) {
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

    private void openGallery() {
        Intent galleryIntent = new Intent(Intent.ACTION_PICK, MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        galleryLauncher.launch(galleryIntent);
    }

    private void takePicture() {
        Intent takePictureIntent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
        cameraLauncher.launch(takePictureIntent);
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

    public void onSaveButtonClicked(View view) {
        String tabletName = editTextTabletName.getText().toString().trim();
        String dosage = editTextDosage.getText().toString().trim();
        String frequency = spinnerFrequency.getSelectedItem().toString();
        String intakeSchedule = spinnerIntakeSchedule.getSelectedItem().toString();
        String intakeTimePreference = radioGroupIntake.getCheckedRadioButtonId() == R.id.radioButtonBefore ? "Before" : "After";

        FirebaseUser currentUser = FirebaseAuth.getInstance().getCurrentUser();
        if (currentUser != null) {
            String elderEmail = currentUser.getEmail();
            if (elderEmail != null) {
                if (!tabletName.isEmpty() && !dosage.isEmpty()) {
                    Tablet tablet = new Tablet();
                    tablet.setName(tabletName);
                    tablet.setDosage(dosage);
                    tablet.setFrequency(frequency);
                    tablet.setIntakeSchedule(intakeSchedule);
                    tablet.setIntakeTime(intakeTimePreference);

                    uploadImageAndSaveTablet(elderEmail, tablet);
                } else {
                    Toast.makeText(this, "Please enter tablet name and dosage", Toast.LENGTH_SHORT).show();
                }
            }
        } else {
            Toast.makeText(this, "No user logged in", Toast.LENGTH_SHORT).show();
        }
    }

    private void uploadImageAndSaveTablet(String elderEmail, Tablet tablet) {
        if (imageUri != null) {
            StorageReference fileRef = storageReference.child("medic_images/" + System.currentTimeMillis() + "." + getFileExtension(imageUri));
            UploadTask uploadTask = fileRef.putFile(imageUri);

            uploadTask.continueWithTask(task -> {
                if (!task.isSuccessful()) {
                    throw task.getException();
                }
                return fileRef.getDownloadUrl();
            }).addOnCompleteListener(task -> {
                if (task.isSuccessful()) {
                    Uri downloadUri = task.getResult();
                    tablet.setImageUrl(downloadUri.toString());
                    saveTabletDetails(elderEmail, tablet);
                } else {
                    Toast.makeText(MedicInner.this, "Upload failed: " + task.getException().getMessage(), Toast.LENGTH_SHORT).show();
                }
            });
        } else {
            // No image selected, proceed to save tablet details without an image URL
            saveTabletDetails(elderEmail, tablet);
        }
    }

    private void saveTabletDetails(String elderEmail, Tablet tablet) {
        Map<String, Object> tabletMap = new HashMap<>();
        tabletMap.put("name", tablet.getName());
        tabletMap.put("dosage", tablet.getDosage());
        tabletMap.put("frequency", tablet.getFrequency());
        tabletMap.put("intakeSchedule", tablet.getIntakeSchedule());
        tabletMap.put("intakeTime", tablet.getIntakeTime());
        tabletMap.put("imageUrl", tablet.getImageUrl() != null ? tablet.getImageUrl() : "");

        db.collection("elders").document(elderEmail).collection("tablets").add(tabletMap)
                .addOnSuccessListener(documentReference -> Toast.makeText(MedicInner.this, "Tablet saved successfully", Toast.LENGTH_SHORT).show())
                .addOnFailureListener(e -> Toast.makeText(MedicInner.this, "Error saving tablet: " + e.getMessage(), Toast.LENGTH_SHORT).show());
    }

    private String getFileExtension(Uri uri) {
        return getContentResolver().getType(uri).split("/")[1];
    }
}

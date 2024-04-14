package com.example.enhancedaging.Routine;

import android.Manifest;
import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.telephony.SmsManager;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import android.widget.ToggleButton;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import com.example.enhancedaging.R;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.LocationServices;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.GeoPoint;

import java.util.HashMap;
import java.util.Map;

public class RoutineAnalysis extends AppCompatActivity {

    private static final int LOCATION_PERMISSION_REQUEST_CODE = 100;
    private static final int REQUEST_CODE_CHOOSE_LOCATION = 200;
    private static final int PICK_CONTACT_REQUEST_CODE = 300;
    private static final int SMS_PERMISSION_REQUEST_CODE = 400;

    private FusedLocationProviderClient fusedLocationClient;
    private LocationCallback locationCallback;
    private Location homeLocation;
    private FirebaseFirestore firestore;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_routine_analysis);

        fusedLocationClient = LocationServices.getFusedLocationProviderClient(this);
        firestore = FirebaseFirestore.getInstance(); // Initialize Firestore
        setupButtons();
        setupToggleButton();
        retrieveHomeLocation(); // Retrieve home location from Firestore on start
    }

    private void setupButtons() {
        findViewById(R.id.choose_location_button).setOnClickListener(v -> openMapToChooseLocation());
        findViewById(R.id.save_contact_button).setOnClickListener(v -> selectContact());
    }
    private void selectContact() {
        Intent contactPickerIntent = new Intent(Intent.ACTION_PICK, ContactsContract.CommonDataKinds.Phone.CONTENT_URI);
        startActivityForResult(contactPickerIntent, PICK_CONTACT_REQUEST_CODE);
    }


    private void setupToggleButton() {
        ((ToggleButton) findViewById(R.id.toggle_button)).setOnCheckedChangeListener((buttonView, isChecked) -> {
            if (isChecked) {
                requestLocationPermission();
            } else {
                stopLocationUpdates();
            }
        });
    }

    private void requestLocationPermission() {
        if (ContextCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.ACCESS_FINE_LOCATION}, LOCATION_PERMISSION_REQUEST_CODE);
        } else {
            startLocationUpdates();
        }
    }

    private void startLocationUpdates() {
        LocationRequest locationRequest = LocationRequest.create();
        locationRequest.setInterval(60000);
        locationRequest.setFastestInterval(30000);
        locationRequest.setPriority(LocationRequest.PRIORITY_HIGH_ACCURACY);

        locationCallback = new LocationCallback() {
            @Override
            public void onLocationResult(LocationResult locationResult) {
                if (locationResult != null) {
                    for (Location location : locationResult.getLocations()) {
                        updateLocationInDatabase(location);
                    }
                }
            }
        };

        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) == PackageManager.PERMISSION_GRANTED) {
            fusedLocationClient.requestLocationUpdates(locationRequest, locationCallback, null);
        }
    }

    private void stopLocationUpdates() {
        fusedLocationClient.removeLocationUpdates(locationCallback);
        Toast.makeText(this, "Location updates stopped.", Toast.LENGTH_SHORT).show();
    }

    private void updateLocationInDatabase(Location location) {
        FirebaseUser user = FirebaseAuth.getInstance().getCurrentUser();
        if (user != null && user.getEmail() != null) {
            DatabaseReference database = FirebaseDatabase.getInstance().getReference("location");
            Map<String, Object> locationData = new HashMap<>();
            locationData.put("latitude", location.getLatitude());
            locationData.put("longitude", location.getLongitude());
            locationData.put("email", user.getEmail());

            database.child(user.getUid()).setValue(locationData)
                    .addOnSuccessListener(aVoid -> Toast.makeText(RoutineAnalysis.this, "Location updated successfully!", Toast.LENGTH_SHORT).show())
                    .addOnFailureListener(e -> Toast.makeText(RoutineAnalysis.this, "Failed to update location.", Toast.LENGTH_SHORT).show());

            checkDistanceAndNotify(location);
        } else {
            Toast.makeText(this, "User is not logged in or email is not available.", Toast.LENGTH_SHORT).show();
        }
    }

    private void checkDistanceAndNotify(Location location) {
        if (homeLocation != null && location.distanceTo(homeLocation) > 1000) {
            sendAlertSMS(location);
        }
    }

    private void sendAlertSMS(Location location) {
        FirebaseUser user = FirebaseAuth.getInstance().getCurrentUser();
        if (user != null) {
            DatabaseReference database = FirebaseDatabase.getInstance().getReference("contacts").child(user.getUid());
            database.get().addOnCompleteListener(task -> {
                if (task.isSuccessful() && task.getResult() != null && task.getResult().getValue() != null) {
                    String phoneNumber = task.getResult().child("phoneNumber").getValue(String.class);
                    if (phoneNumber != null) {
                        String message = "I have wandered away, come pick me up at http://www.google.com/maps/place/" + location.getLatitude() + "," + location.getLongitude();
                        sendSms(phoneNumber, message);
                    }
                }
            });
        }
    }

    private void sendSms(String phoneNumber, String message) {
        if (ContextCompat.checkSelfPermission(this, Manifest.permission.SEND_SMS) != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.SEND_SMS}, SMS_PERMISSION_REQUEST_CODE);
        } else {
            SmsManager.getDefault().sendTextMessage(phoneNumber, null, message, null, null);
            Toast.makeText(this, "SMS sent successfully!", Toast.LENGTH_SHORT).show();
        }
    }

    private void openMapToChooseLocation() {
        startActivityForResult(new Intent(this, ChooseLocationActivity.class), REQUEST_CODE_CHOOSE_LOCATION);
    }



    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == REQUEST_CODE_CHOOSE_LOCATION && resultCode == RESULT_OK && data != null) {
            double lat = data.getDoubleExtra("latitude", 0);
            double lon = data.getDoubleExtra("longitude", 0);
            setHomeLocation(new Location("") {{
                setLatitude(lat);
                setLongitude(lon);
            }});
        } else if (requestCode == PICK_CONTACT_REQUEST_CODE && resultCode == RESULT_OK) {
            Uri contactUri = data.getData();
            Cursor cursor = getContentResolver().query(contactUri, new String[]{ContactsContract.CommonDataKinds.Phone.NUMBER}, null, null, null);
            if (cursor != null && cursor.moveToFirst()) {
                @SuppressLint("Range") String number = cursor.getString(cursor.getColumnIndex(ContactsContract.CommonDataKinds.Phone.NUMBER));
                saveContact(number);
            }
        }
    }

    private void setHomeLocation(Location location) {
        this.homeLocation = location;
        saveHomeLocation();
    }

    private void saveHomeLocation() {
        FirebaseUser user = FirebaseAuth.getInstance().getCurrentUser();
        if (user != null) {
            Map<String, Object> homeLocationData = new HashMap<>();
            homeLocationData.put("geoPoint", new GeoPoint(homeLocation.getLatitude(), homeLocation.getLongitude()));
            homeLocationData.put("email", user.getEmail());

            firestore.collection("homeLocations").document(user.getUid()).set(homeLocationData)
                    .addOnSuccessListener(aVoid -> Toast.makeText(RoutineAnalysis.this, "Home location saved to Firestore.", Toast.LENGTH_SHORT).show())
                    .addOnFailureListener(e -> Toast.makeText(RoutineAnalysis.this, "Failed to save home location.", Toast.LENGTH_SHORT).show());
        } else {
            Toast.makeText(this, "User is not logged in.", Toast.LENGTH_SHORT).show();
        }
    }

    private void retrieveHomeLocation() {
        FirebaseUser user = FirebaseAuth.getInstance().getCurrentUser();
        if (user != null) {
            firestore.collection("homeLocations").document(user.getUid()).get().addOnSuccessListener(documentSnapshot -> {
                if (documentSnapshot.exists() && documentSnapshot.contains("geoPoint")) {
                    GeoPoint geoPoint = documentSnapshot.getGeoPoint("geoPoint");
                    if (geoPoint != null) {
                        homeLocation = new Location("");
                        homeLocation.setLatitude(geoPoint.getLatitude());
                        homeLocation.setLongitude(geoPoint.getLongitude());
                        Toast.makeText(this, "Home location retrieved.", Toast.LENGTH_SHORT).show();
                    }
                }
            }).addOnFailureListener(e -> Toast.makeText(this, "Failed to retrieve home location.", Toast.LENGTH_SHORT).show());
        }
    }

    private void saveContact(String phoneNumber) {
        FirebaseUser user = FirebaseAuth.getInstance().getCurrentUser();
        if (user != null) {
            DatabaseReference database = FirebaseDatabase.getInstance().getReference("contacts").child(user.getUid());
            Map<String, Object> contactData = new HashMap<>();
            contactData.put("phoneNumber", phoneNumber);

            database.setValue(contactData)
                    .addOnSuccessListener(aVoid -> Toast.makeText(this, "Contact saved successfully!", Toast.LENGTH_SHORT).show())
                    .addOnFailureListener(e -> Toast.makeText(this, "Failed to save contact.", Toast.LENGTH_SHORT).show());
        }
    }
}

package com.example.enhancedaging;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import java.util.ArrayList;
import java.util.List;

public class DatabaseHelper extends SQLiteOpenHelper {

    // Database Version
    private static final int DATABASE_VERSION = 1;

    // Database Name
    private static final String DATABASE_NAME = "HealthTrackerDB";

    // Table Names
    private static final String TABLE_HEALTH_TRACKING = "health_tracking";

    // Column Names
    private static final String COLUMN_ID = "id";
    private static final String COLUMN_TIMESTAMP = "timestamp";
    private static final String COLUMN_WEIGHT = "weight";
    private static final String COLUMN_SPO2 = "spo2";
    private static final String COLUMN_HEART_RATE = "heart_rate";
    private static final String COLUMN_BLOOD_PRESSURE = "blood_pressure";

    // Table Create Statements
    private static final String CREATE_TABLE_HEALTH_TRACKING = "CREATE TABLE "
            + TABLE_HEALTH_TRACKING + "(" + COLUMN_ID + " INTEGER PRIMARY KEY AUTOINCREMENT,"
            + COLUMN_TIMESTAMP + " INTEGER,"
            + COLUMN_WEIGHT + " REAL,"
            + COLUMN_SPO2 + " REAL,"
            + COLUMN_HEART_RATE + " REAL,"
            + COLUMN_BLOOD_PRESSURE + " TEXT" + ")";

    public DatabaseHelper(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        // creating required tables
        db.execSQL(CREATE_TABLE_HEALTH_TRACKING);
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        // on upgrade drop older tables
        db.execSQL("DROP TABLE IF EXISTS " + TABLE_HEALTH_TRACKING);
        // create new tables
        onCreate(db);
    }

    public long insertHealthData(HealthData healthData) {
        SQLiteDatabase db = this.getWritableDatabase();

        ContentValues values = new ContentValues();
        values.put(COLUMN_TIMESTAMP, healthData.getTimestamp());
        values.put(COLUMN_WEIGHT, healthData.getWeight());
        values.put(COLUMN_SPO2, healthData.getSpo2());
        values.put(COLUMN_HEART_RATE, healthData.getHeartRate());
        values.put(COLUMN_BLOOD_PRESSURE, healthData.getBloodPressure());

        // insert row
        long id = db.insert(TABLE_HEALTH_TRACKING, null, values);
        return id;
    }

    @SuppressLint("Range")
    public List<HealthData> getAllHealthData() {
        List<HealthData> healthDataList = new ArrayList<>();
        SQLiteDatabase db = this.getReadableDatabase();
        Cursor cursor = db.rawQuery("SELECT * FROM " + TABLE_HEALTH_TRACKING, null);

        if (cursor != null) {
            try {
                if (cursor.moveToFirst()) {
                    do {
                        HealthData healthData = new HealthData();
                        healthData.setId(cursor.getLong(cursor.getColumnIndexOrThrow(COLUMN_ID)));
                        healthData.setTimestamp(cursor.getLong(cursor.getColumnIndexOrThrow(COLUMN_TIMESTAMP)));
                        healthData.setWeight(cursor.getDouble(cursor.getColumnIndexOrThrow(COLUMN_WEIGHT)));
                        healthData.setSpo2(cursor.isNull(cursor.getColumnIndex(COLUMN_SPO2)) ? null : cursor.getDouble(cursor.getColumnIndex(COLUMN_SPO2)));
                        healthData.setHeartRate(cursor.isNull(cursor.getColumnIndex(COLUMN_HEART_RATE)) ? null : cursor.getDouble(cursor.getColumnIndex(COLUMN_HEART_RATE)));
                        healthData.setBloodPressure(cursor.getString(cursor.getColumnIndexOrThrow(COLUMN_BLOOD_PRESSURE)));

                        healthDataList.add(healthData);
                    } while (cursor.moveToNext());
                }
            } finally {
                cursor.close();
            }
        }

        return healthDataList;
    }
}

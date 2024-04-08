package com.example.enhancedaging;

import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class RetrofitClient {

    private static Retrofit retrofit = null;

    public static Retrofit getClient(String baseUrl) { // Accept base URL as a parameter
        HttpLoggingInterceptor logging = new HttpLoggingInterceptor();
        logging.setLevel(HttpLoggingInterceptor.Level.BODY);

        OkHttpClient.Builder httpClient = new OkHttpClient.Builder();

        // Adding MongoDB Data API Key Header
        httpClient.addInterceptor(chain -> {
            okhttp3.Request original = chain.request();
            okhttp3.Request request = original.newBuilder()
                    .header("Content-Type", "application/json")
                    // Replace "Your-Data-API-Key" with your actual MongoDB Data API key
                    .header("api-key", "3JKEwQDR9zsXNX4raAjVVW6n75ptDrfUwMWW36Z8N80Hpi8rXq2M5qM8pyuk1cvK")
                    .method(original.method(), original.body())
                    .build();
            return chain.proceed(request);
        });

        httpClient.addInterceptor(logging);  // Adding the logging interceptor

        retrofit = new Retrofit.Builder()
                .baseUrl(baseUrl) // Use the dynamic base URL
                .addConverterFactory(GsonConverterFactory.create())
                .client(httpClient.build())
                .build();

        return retrofit;
    }
}

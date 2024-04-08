package com.example.enhancedaging;

import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.Headers;
import retrofit2.http.POST;

public interface MyApi {
    @Headers("Content-Type: application/json")
    @POST("function/call")
    Call<ResponseBody> loginUser(@Body RequestBody body);

    @Headers("Content-Type: application/json")
    @POST("your-register-endpoint")
    Call<ResponseBody> registerUser(@Body RequestBody requestBody);
}

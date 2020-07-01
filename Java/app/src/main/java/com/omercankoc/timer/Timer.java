package com.omercankoc.timer;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.os.CountDownTimer;
import android.widget.TextView;

public class Timer extends AppCompatActivity {

    TextView textViewTimer;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_timer);

        textViewTimer = findViewById(R.id.textViewTimer);

        // App acildiginda direk baslatilir.
        // 10000 = 10 sn. -> Sure
        // 1000 = 1 sn. -> Aralik
        new CountDownTimer(10000,1000){

            // Her birim zamanda (aralik) yapilacak operasyonlari belirtir.
            @Override
            public void onTick(long millisUntilFinished) {
                textViewTimer.setText("Timer : " + millisUntilFinished/1000);
            }

            // Sure bitiminde yapilacak operasyonlari belirtir.
            @Override
            public void onFinish() {
                textViewTimer.setText("Finished!");
            }
        }.start();
    }
}
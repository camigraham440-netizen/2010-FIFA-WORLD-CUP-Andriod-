package com.worldcup2010.android;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public class MainActivity extends Activity {
    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        System.loadLibrary("worldcup2010");
        TextView view = new TextView(this);
        view.setText("FIFA World Cup 2010\\nAndroid ARM64 foundation\\nNative runtime integration pending");
        view.setTextSize(20);
        view.setPadding(32, 64, 32, 32);
        setContentView(view);
    }
}

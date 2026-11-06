package com.worldcup2010.android;

import android.app.Activity;
import android.os.Bundle;
import android.content.Intent;
import android.net.Uri;
import android.graphics.Color;
import android.view.Gravity;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends Activity {

    private static final int PICK_FOLDER = 100;
    private LinearLayout root;
    private TextView folderStatus;

    private int dp(int value) {
        return (int) (value * getResources().getDisplayMetrics().density);
    }

    private TextView makeText(String text, int size, int color) {
        TextView view = new TextView(this);
        view.setText(text);
        view.setTextSize(size);
        view.setTextColor(color);
        return view;
    }

    private void addSpace(LinearLayout layout, int height) {
        View space = new View(this);
        layout.addView(space, new LinearLayout.LayoutParams(
            1, dp(height)
        ));
    }

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);

        ScrollView scroll = new ScrollView(this);
        scroll.setBackgroundColor(Color.rgb(8, 17, 32));

        root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dp(24), dp(42), dp(24), dp(32));

        scroll.addView(root);
        setContentView(scroll);

        TextView edition = makeText(
            "2010  •  ANDROID EDITION", 13,
            Color.rgb(0, 210, 190)
        );
        edition.setGravity(Gravity.CENTER);
        root.addView(edition);

        addSpace(root, 22);

        TextView title = makeText(
            "FIFA WORLD CUP\n2010", 32, Color.WHITE
        );
        title.setGravity(Gravity.CENTER);
        title.setTypeface(null, 1);
        root.addView(title);

        addSpace(root, 12);

        TextView subtitle = makeText(
            "THE ROAD TO GLORY", 13,
            Color.rgb(170, 190, 210)
        );
        subtitle.setGravity(Gravity.CENTER);
        root.addView(subtitle);

        addSpace(root, 35);

        TextView statusTitle = makeText(
            "PROJECT STATUS", 14,
            Color.rgb(0, 210, 190)
        );
        statusTitle.setTypeface(null, 1);
        root.addView(statusTitle);

        addSpace(root, 12);

        TextView status = makeText(
            "ANDROID BUILD     READY\n\n" +
            "NATIVE GAME ENGINE     NOT INTEGRATED\n\n" +
            "GAME RUNTIME     IN DEVELOPMENT",
            14, Color.WHITE
        );
        status.setPadding(dp(18), dp(18), dp(18), dp(18));
        status.setBackgroundColor(Color.rgb(19, 34, 53));
        root.addView(status);

        addSpace(root, 30);

        TextView filesTitle = makeText(
            "GAME FILES", 18, Color.WHITE
        );
        filesTitle.setTypeface(null, 1);
        root.addView(filesTitle);

        addSpace(root, 8);

        TextView explanation = makeText(
            "Select a folder containing your game files.",
            14, Color.rgb(175, 190, 205)
        );
        root.addView(explanation);

        addSpace(root, 18);

        Button chooseButton = new Button(this);
        chooseButton.setText("CHOOSE GAME FOLDER");
        chooseButton.setTextSize(14);
        chooseButton.setOnClickListener(v -> chooseFolder());

        root.addView(chooseButton, new LinearLayout.LayoutParams(
            LinearLayout.LayoutParams.MATCH_PARENT,
            dp(56)
        ));

        addSpace(root, 14);

        folderStatus = makeText(
            "No folder selected", 13,
            Color.rgb(0, 210, 190)
        );
        folderStatus.setGravity(Gravity.CENTER);
        root.addView(folderStatus);

        addSpace(root, 35);

        TextView notice = makeText(
            "NOTE\n\n" +
            "This is the Android application interface. " +
            "The native game runtime has not yet been integrated, " +
            "so this build cannot launch FIFA World Cup 2010.",
            13, Color.rgb(170, 185, 200)
        );
        notice.setPadding(dp(16), dp(16), dp(16), dp(16));
        notice.setBackgroundColor(Color.rgb(19, 34, 53));
        root.addView(notice);
    }

    private void chooseFolder() {
        Intent intent = new
Intent(Intent.ACTION_OPEN_DOCUMENT_TREE);
        startActivityForResult(intent, PICK_FOLDER);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (requestCode == PICK_FOLDER && resultCode == RESULT_OK && data != null) {
            Uri uri = data.getData();

            if (uri != null) {
                getContentResolver().takePersistableUriPermission(
                    uri,
                    Intent.FLAG_GRANT_READ_URI_PERMISSION |
                    Intent.FLAG_GRANT_WRITE_URI_PERMISSION
                );

                getSharedPreferences("game_files", MODE_PRIVATE)
                    .edit()
                    .putString("game_folder", uri.toString())
                    .apply();

                folderStatus.setText("GAME FOLDER SELECTED");
                Toast.makeText(this, "Folder selected", Toast.LENGTH_SHORT).show();
            }
        }
    }
}

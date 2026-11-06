package com.worldcup2010.android;

import android.app.Activity;
import android.os.Bundle;
import android.content.Intent;
import android.net.Uri;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
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

    private final int BG = Color.rgb(7, 15, 27);
    private final int PANEL = Color.rgb(17, 31, 48);
    private final int GOLD = Color.rgb(232, 184, 75);
    private final int WHITE = Color.WHITE;
    private final int MUTED = Color.rgb(165, 180, 198);

    private int dp(int v) {
        return (int)(v * getResources().getDisplayMetrics().density);
    }

    private GradientDrawable shape(int color, int radius) {
        GradientDrawable d = new GradientDrawable();
        d.setColor(color);
        d.setCornerRadius(dp(radius));
        return d;
    }

    private TextView label(String text, int size, int color, boolean bold) {
        TextView t = new TextView(this);
        t.setText(text);
        t.setTextSize(size);
        t.setTextColor(color);
        if (bold) t.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        return t;
    }

    private void space(LinearLayout box, int height) {
        View v = new View(this);
        box.addView(v, new LinearLayout.LayoutParams(1, dp(height)));
    }

    private LinearLayout column() {
        LinearLayout l = new LinearLayout(this);
        l.setOrientation(LinearLayout.VERTICAL);
        return l;
    }

    private TextView action(String text, int background, int foreground) {
        TextView t = label(text, 15, foreground, true);
        t.setGravity(Gravity.CENTER);
        t.setPadding(dp(16), dp(15), dp(16), dp(15));
        t.setBackground(shape(background, 12));
        return t;
    }

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);

        getWindow().setStatusBarColor(BG);
        getWindow().setNavigationBarColor(BG);

        ScrollView scroll = new ScrollView(this);
        scroll.setFillViewport(true);
        scroll.setBackgroundColor(BG);

        root = column();
        root.setPadding(dp(22), dp(24), dp(22), dp(30));
        scroll.addView(root);
        setContentView(scroll);

        buildHome();
    }

    private void buildHome() {
        root.removeAllViews();

        LinearLayout top = new LinearLayout(this);
        top.setGravity(Gravity.CENTER_VERTICAL);
        top.setOrientation(LinearLayout.HORIZONTAL);

        TextView mark = label("FIFA", 22, GOLD, true);
        top.addView(mark);

        TextView edition = label("  WORLD CUP 2010", 12, WHITE, true);
        top.addView(edition);

        View spacer = new View(this);
        top.addView(spacer, new LinearLayout.LayoutParams(0, 1, 1));

        TextView badge = label("ANDROID", 10, GOLD, true);
        badge.setPadding(dp(10), dp(7), dp(10), dp(7));
        badge.setBackground(shape(PANEL, 20));
        top.addView(badge);
        root.addView(top);

        space(root, 30);

        TextView welcome = label("THE WORLD'S GAME.", 12, GOLD, true);
        root.addView(welcome);

        space(root, 8);

        TextView title = label("LIVE THE\nTOURNAMENT.", 34, WHITE, true);
        title.setLineSpacing(dp(2), 1f);
        root.addView(title);

        space(root, 10);

        TextView subtitle = label(
            "SOUTH AFRICA 2010  •  THE ROAD TO GLORY",
            11, MUTED, true
        );
        root.addView(subtitle);

        space(root, 25);

        LinearLayout hero = column();
        hero.setPadding(dp(20), dp(22), dp(20), dp(22));
        hero.setBackground(new GradientDrawable(
            GradientDrawable.Orientation.TL_BR,
            new int[] {
                Color.rgb(35, 65, 76),
                Color.rgb(19, 43, 54),
                Color.rgb(14, 28, 43)
            }
        ));
        hero.setBackground(shape(Color.rgb(20, 46, 58), 18));

        TextView tournament = label("2010 FIFA WORLD CUP", 12, GOLD, true);
        hero.addView(tournament);

        space(hero, 12);

        TextView heroTitle = label("ONE WORLD.\nONE DREAM.", 27, WHITE, true);
        hero.addView(heroTitle);

        space(hero, 10);

        TextView heroText = label(
            "Your tournament journey starts here.",
            13, MUTED, false
        );
        hero.addView(heroText);

        space(hero, 22);

        TextView play = action("▶     PLAY", GOLD, Color.rgb(15, 24, 34));
        hero.addView(play, new LinearLayout.LayoutParams(
            LinearLayout.LayoutParams.MATCH_PARENT, dp(54)
        ));
        play.setOnClickListener(v -> Toast.makeText(
            this, "Game runtime is not integrated yet.",
            Toast.LENGTH_LONG
        ).show());

        root.addView(hero);

        space(root, 28);

        TextView section = label("TOURNAMENT HUB", 13, GOLD, true);
        root.addView(section);

        space(root, 13);

        addMenu("GAME FILES", "Import and manage your game folder", "FILES");
        space(root, 10);
        addMenu("CONTROLS", "Touch controls and button layout", "CONTROLS");
        space(root, 10);
        addMenu("VIDEO & AUDIO", "Display, graphics and sound settings", "SETTINGS");
        space(root, 10);
        addMenu("ONLINE", "Explore multiplayer possibilities", "ONLINE");

        space(root, 25);

        LinearLayout fileCard = column();
        fileCard.setPadding(dp(16), dp(15), dp(16), dp(15));
        fileCard.setBackground(shape(PANEL, 12));

        fileCard.addView(label("GAME FOLDER", 12, GOLD, true));
        space(fileCard, 8);

        folderStatus = label("No game folder selected", 13, MUTED, false);
        fileCard.addView(folderStatus);

        space(fileCard, 12);

        TextView choose = action("＋   CHOOSE GAME FOLDER",
            Color.rgb(35, 52, 69), WHITE);
        fileCard.addView(choose);
        choose.setOnClickListener(v -> chooseFolder());

        root.addView(fileCard);

        space(root, 25);

        TextView footer = label(
            "FIFA WORLD CUP 2010  •  ANDROID PROJECT\nNATIVE GAME RUNTIME IN DEVELOPMENT",
            10, MUTED, true
        );
        footer.setGravity(Gravity.CENTER);
        root.addView(footer);

        String saved = getSharedPreferences("game_files", MODE_PRIVATE)
            .getString("game_folder", null);
        if (saved != null) folderStatus.setText("A game folder has been selected");
    }

    private void addMenu(String heading, String description, String page) {
        LinearLayout card = new LinearLayout(this);
        card.setGravity(Gravity.CENTER_VERTICAL);
        card.setOrientation(LinearLayout.HORIZONTAL);
        card.setPadding(dp(16), dp(15), dp(16), dp(15));
        card.setBackground(shape(PANEL, 12));

        LinearLayout words = column();
        words.addView(label(heading, 14, WHITE, true));
        space(words, 5);
        words.addView(label(description, 11, MUTED, false));

        card.addView(words, new LinearLayout.LayoutParams(0,
            LinearLayout.LayoutParams.WRAP_CONTENT, 1));

        TextView arrow = label("›", 27, GOLD, true);
        card.addView(arrow);

        root.addView(card, new LinearLayout.LayoutParams(
            LinearLayout.LayoutParams.MATCH_PARENT, dp(76)
        ));

        card.setOnClickListener(v -> Toast.makeText(
            this, heading + " section will be developed next.",
            Toast.LENGTH_SHORT
        ).show());
    }

    private void chooseFolder() {
        Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE);
        startActivityForResult(intent, PICK_FOLDER);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (requestCode == PICK_FOLDER && resultCode == RESULT_OK &&
            data != null && data.getData() != null) {

            Uri uri = data.getData();

            getContentResolver().takePersistableUriPermission(
                uri,
                Intent.FLAG_GRANT_READ_URI_PERMISSION |
                Intent.FLAG_GRANT_WRITE_URI_PERMISSION
            );

            getSharedPreferences("game_files", MODE_PRIVATE)
                .edit()
                .putString("game_folder", uri.toString())
                .apply();

            if (folderStatus != null)
                folderStatus.setText("A game folder has been selected");

            Toast.makeText(this, "Game folder selected",
                Toast.LENGTH_SHORT).show();
        }
    }
}

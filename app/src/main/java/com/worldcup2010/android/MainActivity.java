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
private TextView filesStatus;

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
if (filesStatus != null)
    filesStatus.setText("A game folder has been selected");
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

        card.setOnClickListener(v -> {
    if ("FILES".equals(page)) {
        buildFiles();
    } else if ("CONTROLS".equals(page)) {
        buildControls();
    } else if ("SETTINGS".equals(page)) {
        buildSettings();
    } else if ("ONLINE".equals(page)) {
    buildOnline();
} else {
        Toast.makeText(this, heading + " section will be developed next.",
                Toast.LENGTH_SHORT).show();
    }
});
    }

    
private void buildOnline() {
    root.removeAllViews();

    TextView back = action("< BACK TO HOME", PANEL, WHITE);
    back.setOnClickListener(v -> buildHome());
    root.addView(back);
    space(root, 20);

    root.addView(label("ONLINE MULTIPLAYER", 22, GOLD, true));
    space(root, 10);
    root.addView(label("Play FIFA World Cup 2010 with another player.",
            13, MUTED, false));
    space(root, 20);

    String[] options = {"CREATE ROOM", "JOIN ROOM",
            "PRIVATE MATCH", "PLAYER LOBBY"};
    String[] details = {"Host a match", "Join using a room code",
            "Arrange a private match", "Meet other players"};

    for (int i = 0; i < options.length; i++) {
        LinearLayout card = column();
        card.setPadding(dp(16), dp(14), dp(16), dp(14));
        card.setBackground(shape(PANEL, 12));
        card.addView(label(options[i], 14, WHITE, true));
        space(card, 5);
        card.addView(label(details[i], 11, MUTED, false));
        root.addView(card, new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, -2));
        space(root, 10);
        card.setOnClickListener(v -> Toast.makeText(this,
                "Online networking is not connected yet.",
                Toast.LENGTH_SHORT).show());
    }

    space(root, 18);
    root.addView(label("CONNECTION STATUS", 13, WHITE, true));
    space(root, 8);
    root.addView(label("NOT CONNECTED", 13, GOLD, true));
    space(root, 8);
    root.addView(label(
            "Online multiplayer is experimental. Network and game-engine integration are still required.",
            11, MUTED, false));
}

private void buildFiles() {
    root.removeAllViews();

    TextView back = action("‹  BACK TO HOME", PANEL, WHITE);
    back.setOnClickListener(v -> buildHome());
    root.addView(back);
    space(root, 25);

    root.addView(label("GAME FILES", 23, WHITE, true));
    space(root, 8);
    root.addView(label("Select and manage your game folder.", 13, MUTED, false));
    space(root, 25);

    String saved = getSharedPreferences("game_files", MODE_PRIVATE)
            .getString("game_folder", null);

    filesStatus = label(
            saved == null ? "No game folder selected" : "A game folder has been selected",
            14, GOLD, true
    );
    root.addView(filesStatus);
    space(root, 20);

    TextView choose = action("CHOOSE GAME FOLDER", GOLD, BG);
    choose.setOnClickListener(v -> chooseFolder());
    root.addView(choose);
    space(root, 12);

    TextView clear = action("CLEAR SELECTION", PANEL, WHITE);
    clear.setOnClickListener(v -> {
        getSharedPreferences("game_files", MODE_PRIVATE)
                .edit().remove("game_folder").apply();
        filesStatus.setText("No game folder selected");
        if (folderStatus != null) {
            folderStatus.setText("No game folder selected");
        }
        Toast.makeText(this, "Folder selection cleared", Toast.LENGTH_SHORT).show();
    });
    root.addView(clear);
}


private void buildControls() {
    root.removeAllViews();

    TextView back = action("‹  BACK TO HOME", PANEL, WHITE);
    back.setOnClickListener(v -> buildHome());
    root.addView(back);
    space(root, 25);

    root.addView(label("TOUCH CONTROLS", 23, WHITE, true));
    space(root, 8);
    root.addView(label("Adjust the on-screen controls.", 13, MUTED, false));
    space(root, 25);

    android.content.SharedPreferences prefs =
            getSharedPreferences("game_controls", MODE_PRIVATE);

    int savedSize = prefs.getInt("button_size", 100);
    int savedOpacity = prefs.getInt("button_opacity", 75);

    root.addView(label("BUTTON SIZE", 14, GOLD, true));
    space(root, 8);

    TextView sizeValue = label(savedSize + "%", 13, WHITE, true);
    root.addView(sizeValue);

    android.widget.SeekBar sizeBar = new android.widget.SeekBar(this);
    sizeBar.setMax(100);
    sizeBar.setProgress(savedSize - 50);
    root.addView(sizeBar);
    space(root, 22);

    root.addView(label("BUTTON OPACITY", 14, GOLD, true));
    space(root, 8);

    TextView opacityValue = label(savedOpacity + "%", 13, WHITE, true);
    root.addView(opacityValue);

    android.widget.SeekBar opacityBar = new android.widget.SeekBar(this);
    opacityBar.setMax(100);
    opacityBar.setProgress(savedOpacity);
    root.addView(opacityBar);
    space(root, 22);

    root.addView(label("CONTROL PREVIEW", 14, GOLD, true));
    space(root, 12);

    LinearLayout preview = new LinearLayout(this);
    preview.setGravity(Gravity.CENTER);
    preview.setPadding(dp(12), dp(20), dp(12), dp(20));
    preview.setBackground(shape(PANEL, 12));

    TextView left = action("◀", GOLD, BG);
    TextView right = action("▶", GOLD, BG);
    TextView pass = action("PASS", GOLD, BG);
    TextView shoot = action("SHOOT", GOLD, BG);

    preview.addView(left);
    preview.addView(right);
    View gap = new View(this);
    preview.addView(gap, new LinearLayout.LayoutParams(0, 1, 1));
    preview.addView(pass);
    space(root, 0);
    preview.addView(shoot);

    root.addView(preview);
    space(root, 20);

    Runnable updatePreview = () -> {
        int size = 50 + sizeBar.getProgress();
        int opacity = opacityBar.getProgress();

        sizeValue.setText(size + "%");
        opacityValue.setText(opacity + "%");

        float scale = size / 100f;
        for (TextView button : new TextView[]{left, right, pass, shoot}) {
            button.setScaleX(scale);
            button.setScaleY(scale);
            button.setAlpha(opacity / 100f);
        }
    };

    sizeBar.setOnSeekBarChangeListener(new android.widget.SeekBar.OnSeekBarChangeListener() {
        public void onProgressChanged(android.widget.SeekBar bar, int value, boolean user) {
            updatePreview.run();
        }
        public void onStartTrackingTouch(android.widget.SeekBar bar) {}
        public void onStopTrackingTouch(android.widget.SeekBar bar) {}
    });

    opacityBar.setOnSeekBarChangeListener(new android.widget.SeekBar.OnSeekBarChangeListener() {
        public void onProgressChanged(android.widget.SeekBar bar, int value, boolean user) {
            updatePreview.run();
        }
        public void onStartTrackingTouch(android.widget.SeekBar bar) {}
        public void onStopTrackingTouch(android.widget.SeekBar bar) {}
    });

    TextView save = action("SAVE CONTROLS", GOLD, BG);
    save.setOnClickListener(v -> {
        prefs.edit()
                .putInt("button_size", 50 + sizeBar.getProgress())
                .putInt("button_opacity", opacityBar.getProgress())
                .apply();
        Toast.makeText(this, "Control settings saved", Toast.LENGTH_SHORT).show();
    });
    root.addView(save);
    space(root, 10);

    TextView reset = action("RESET DEFAULTS", PANEL, WHITE);
    reset.setOnClickListener(v -> {
        sizeBar.setProgress(50);
        opacityBar.setProgress(75);
        prefs.edit().putInt("button_size", 100)
                .putInt("button_opacity", 75).apply();
        updatePreview.run();
        Toast.makeText(this, "Controls reset", Toast.LENGTH_SHORT).show();
    });
    root.addView(reset);

    updatePreview.run();
}



private android.widget.Spinner settingSpinner(String[] values, int selected) {
    android.widget.Spinner spinner = new android.widget.Spinner(this);
    android.widget.ArrayAdapter<String> adapter =
            new android.widget.ArrayAdapter<>(this,
                    android.R.layout.simple_spinner_item, values);
    adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
    spinner.setAdapter(adapter);
    spinner.setSelection(Math.max(0, Math.min(selected, values.length - 1)));
    return spinner;
}

private void buildSettings() {
    root.removeAllViews();

    TextView back = action("‹  BACK TO HOME", PANEL, WHITE);
    back.setOnClickListener(v -> buildHome());
    root.addView(back);
    space(root, 25);

    root.addView(label("VIDEO & AUDIO", 23, WHITE, true));
    space(root, 8);
    root.addView(label("Configure your gameplay preferences.", 13, MUTED, false));
    space(root, 24);

    android.content.SharedPreferences prefs =
            getSharedPreferences("game_settings", MODE_PRIVATE);

    root.addView(label("RENDER RESOLUTION", 14, GOLD, true));
    android.widget.Spinner resolution = settingSpinner(
            new String[]{"640 × 360", "960 × 540", "1280 × 720",
                    "1600 × 900", "1920 × 1080"},
            prefs.getInt("resolution", 2));
    root.addView(resolution);
    space(root, 18);

    root.addView(label("ASPECT RATIO", 14, GOLD, true));
    android.widget.Spinner aspect = settingSpinner(
            new String[]{"16:9", "Fit Screen", "Stretch"},
            prefs.getInt("aspect", 0));
    root.addView(aspect);
    space(root, 18);

    root.addView(label("GRAPHICS QUALITY", 14, GOLD, true));
    android.widget.Spinner graphics = settingSpinner(
            new String[]{"Low", "Medium", "High"},
            prefs.getInt("graphics", 1));
    root.addView(graphics);
    space(root, 18);

    root.addView(label("FRAME RATE TARGET", 14, GOLD, true));
    android.widget.Spinner fps = settingSpinner(
            new String[]{"30 FPS", "60 FPS"},
            prefs.getInt("fps", 1));
    root.addView(fps);
    space(root, 22);

    root.addView(label("AUDIO VOLUME", 14, GOLD, true));
    TextView volumeValue = label(
            prefs.getInt("volume", 80) + "%", 13, WHITE, true);
    root.addView(volumeValue);

    android.widget.SeekBar volume = new android.widget.SeekBar(this);
    volume.setMax(100);
    volume.setProgress(prefs.getInt("volume", 80));
    volume.setOnSeekBarChangeListener(
            new android.widget.SeekBar.OnSeekBarChangeListener() {
        public void onProgressChanged(android.widget.SeekBar bar, int value, boolean user) {
            volumeValue.setText(value + "%");
        }
        public void onStartTrackingTouch(android.widget.SeekBar bar) {}
        public void onStopTrackingTouch(android.widget.SeekBar bar) {}
    });
    root.addView(volume);
    space(root, 24);

    TextView save = action("SAVE SETTINGS", GOLD, BG);
    save.setOnClickListener(v -> {
        prefs.edit()
                .putInt("resolution", resolution.getSelectedItemPosition())
                .putInt("aspect", aspect.getSelectedItemPosition())
                .putInt("graphics", graphics.getSelectedItemPosition())
                .putInt("fps", fps.getSelectedItemPosition())
                .putInt("volume", volume.getProgress())
                .apply();
        Toast.makeText(this, "Video and audio settings saved",
                Toast.LENGTH_SHORT).show();
    });
    root.addView(save);
    space(root, 10);

    TextView reset = action("RESET DEFAULTS", PANEL, WHITE);
    reset.setOnClickListener(v -> {
        resolution.setSelection(2);
        aspect.setSelection(0);
        graphics.setSelection(1);
        fps.setSelection(1);
        volume.setProgress(80);

        prefs.edit()
                .putInt("resolution", 2)
                .putInt("aspect", 0)
                .putInt("graphics", 1)
                .putInt("fps", 1)
                .putInt("volume", 80)
                .apply();

        Toast.makeText(this, "Settings restored to defaults",
                Toast.LENGTH_SHORT).show();
    });
    root.addView(reset);

    space(root, 18);
    root.addView(label(
            "Note: These preferences will affect gameplay after native rendering and audio integration.",
            11, MUTED, false));
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

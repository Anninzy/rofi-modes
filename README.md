# Info

![Screenshot of info theme](screenshots/info.png) Currently displays battery
status only

```bash
# Instead of
rofi -show "..."

# Run
/PATH/TO/rofi.sh -show "..."
```

```css
// Add to existing rofi theme

inputbar {
  children: [ prompt, textbox-prompt-colon, entry, overlay, num-filtered-rows, textbox-num-sep, num-rows, case-indicator, textbox-info ];
}

textbox-info {
  expand: false;
  content: ${INFO};
}
```

# Inhibit

![Screenshot of inhibit mode](screenshots/inhibit.png)

```bash
rofi -modes "inhibit:PATH_TO_inhibit.sh" -show "inhibit"
```

`locked` symbol means that type of lock is active, vice versa\
\
`zzz` symbol stands for suspend lock, your idle management daemon can perform
any action except for suspending\
`monitor` symbol stands for idle lock, your idle management daemon will be
blocked from all actions\
Replace `status_*` with something more understandable than two nerdfont symbols
if needed

# Favorite

![Screenshot of favorite mode](screenshots/favorite.png)

```bash
rofi -combi-modes "favorite:PATH_TO_favorite.sh" -show "combi"
```

Intended to be used in `combi`\
Ensure `favorite` is the 1st mode\
Modify the script to pin programs you need

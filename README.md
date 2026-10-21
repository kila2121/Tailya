<div align="center">

# Tailya

**A glassmorphism theme for GNOME Shell.**

Translucent panels, soft shadows, rounded calendar days and one muted purple accent.

**English** · [Русский](README.ru.md)

![GNOME Shell 45+](https://img.shields.io/badge/GNOME%20Shell-45%2B-4a86cf?logo=gnome&logoColor=white)
![License: MIT](https://img.shields.io/badge/license-MIT-7554d1)

</div>

Popup menus, Quick Settings and the calendar get a semi-transparent dark surface with a soft drop shadow. Calendar days turn into rounded pills. Notifications have proper 16 px corners. Quick toggles, sliders and switches share a single muted purple accent. Text opacity is tuned so it stays readable on any wallpaper, and interactive elements ease between states over 150 ms.

> **Tailya is a Shell theme, not a full GTK theme.** It styles the GNOME Shell interface — menus, the calendar, notifications and Quick Settings — and leaves applications untouched. Its panels are dark and there is no light variant.

---

## What it changes

- **Glass surfaces** — popup menus, Quick Settings and the calendar use a translucent dark background with a soft shadow.
- **Dash and overview** — dash buttons and overview tiles lose their boxes, while the dash itself keeps a subtle glass panel.
- **Calendar** — hovered and current days become rounded pills; labels and navigation arrows get a consistent, readable style.
- **Notifications** — 16 px rounded corners, a soft shadow and carefully stepped text opacity.
- **Purple accent** — checked quick toggles, slider levels and switches share one muted purple (`rgb(117, 84, 209)`).
- **Readable text** — primary, secondary and disabled text use separate white opacity levels.
- **Smooth motion** — 150 ms transitions on hover, focus and press states.

The theme is pure CSS: no extensions, scripts or dependencies beyond User Themes.

## Requirements

| Requirement | Details |
| --- | --- |
| GNOME Shell | 45 or newer (tested on 45 and 46) |
| User Themes | [extension](https://extensions.gnome.org/extension/19/user-themes/), enabled |
| GNOME Tweaks | optional, but the easiest way to pick a Shell theme |

## Installation

### From an archive

```bash
mkdir -p ~/.themes
tar -xf tailya.tar.gz -C ~/.themes
```

Replace `tailya.tar.gz` with the actual archive name if it differs.

### From the project folder

If you downloaded the folder, copy it into your themes directory:

```bash
mkdir -p ~/.themes
cp -r /path/to/Tailya ~/.themes/
```

Replace `/path/to/Tailya` with the actual path.

The result should look like this:

```text
~/.themes/Tailya/
└── gnome-shell/
    └── gnome-shell.css
```

GNOME also reads themes from `~/.local/share/themes/`, so either location works.

### Enable and apply

1. Install and enable the **User Themes** extension.
2. Open **GNOME Tweaks → Appearance** (on some distributions: **Settings → Appearance**) and choose **Tailya** under **Shell**.
3. If the theme does not apply immediately:
   - **X11:** press `Alt+F2`, type `r`, press `Enter`.
   - **Wayland:** log out and back in.

If GNOME Tweaks is missing, install it from your distribution's package manager.

### For all users

```bash
sudo tar -xf tailya.tar.gz -C /usr/share/themes
```

The theme will then be available system-wide. You still need User Themes to select it. To install a folder instead of an archive, use `sudo cp -r /path/to/Tailya /usr/share/themes/`.

## Uninstall

Switch back to another Shell theme first, then remove the folder:

```bash
rm -rf ~/.themes/Tailya
```

For a system-wide install:

```bash
sudo rm -rf /usr/share/themes/Tailya
```

## Customization

All styles live in [`gnome-shell/gnome-shell.css`](gnome-shell/gnome-shell.css).

**Accent color.** The purple accent appears in three shades. Replace all three to keep it consistent:

```css
rgb(117, 84, 209)  /* normal  */
rgb(135, 105, 222) /* hover   */
rgb(100, 70, 190)  /* pressed */
```

**Panel transparency.** Glass surfaces use `rgba(30, 30, 30, 0.5)`. Lower the alpha for more transparency, raise it for a more solid panel.

**Notifications.** Their background is `rgb(35, 35, 35)`.

**Corner radius.** Notifications use `16px`; calendar pills and round buttons use `99px`.

After editing, reload the Shell with `Alt+F2` → `r` on X11, or log out and back in on Wayland.

## Compatibility

| GNOME Shell | Status |
| --- | --- |
| 45 | ✅ Tested |
| 46 | ✅ Tested |
| 47+ | ⚠️ Not tested — should work, but selectors may need adjustment |

## Troubleshooting

**Tailya doesn't appear in the Shell theme list.**
Make sure the path is exactly `~/.themes/Tailya/gnome-shell/gnome-shell.css`, restart GNOME Tweaks and check that User Themes is enabled.

**The theme is selected but nothing changes.**
On Wayland, Shell themes are applied at login — log out and back in. On X11, reload the Shell with `Alt+F2` → `r`.

**The theme was reset after a GNOME update.**
Major GNOME updates often reset Shell themes and disable extensions. Re-enable User Themes and select Tailya again.

**Some elements look unstyled.**
GNOME 47+ may have renamed or added selectors. Let me know your GNOME version and attach a screenshot — or tweak the CSS yourself.

**The login screen still looks default.**
That's expected: GDM uses its own theme and does not load Shell themes from `~/.themes`.

## License

[MIT](LICENSE) © 2026 kila2121

---

<div align="center">

Made for people who like their desktop a little more translucent.

[Русская версия](README.ru.md)

</div>

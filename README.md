# 🩸 DemVAMPS Hyprland 

A high-contrast, aggressive minimalist Wayland setup built on CachyOS. The color palette revolves around a stark, solid pitch-black background paired exclusively with crimson red text, icons, and accents.


## ⚙️ Setup Details
* **OS:** CachyOS (Arch Linux)
* **WM:** [Hyprland](https://hyprland.org/)
* **Shell:** `fish`
* **Status Bar:** `nwg-panel` (Custom zero-bloat layout)
* **App Launcher:** `rofi` (Wayland fork)
* **Typography:** JetBrainsMono Nerd Font & Font Awesome 6 Free
* **Wallpaper:** `lavinia.png` (Handled by `hyprpaper`)

## 📂 Repository Structure
* `.config/hypr/` - Core window manager rules, keybinds, and autostart variables.
* `.config/nwg-panel/` - The DemVAMPS crimson/black CSS styling and layout configuration.
* `.config/rofi/` - App launcher theming.

## 🛠️ Installation Notes
If you want to replicate this aesthetic on your own machine:
1. Ensure you have the required fonts (`ttf-jetbrains-mono-nerd`, `ttf-font-awesome`) installed.
2. Install the core dependencies: `hyprland`, `nwg-panel`, `rofi-wayland`, `hyprpaper`.
3. For the nwg-panel tray to function properly, ensure `network-manager-applet` is installed and running in your Hyprland autostart.
4. Clone this repository and copy the contents of `.config` into your local `~/.config/` directory.

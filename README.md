# ArchLinux & Hyprland OR Sway Setup

Welcome to my Arch Linux with Hyprland window manager setup! This repository contains configuration files (dotfiles) for various daily-used applications, including Starship (shell prompt), Alacritty (terminal emulator), Wofi (application launcher), Hypr (window manager), Waybar (top status bar), grim&slurp[to take screenshot grim -g "$(slurp)") ] and more ..

## Sway Install + Dependencies 
### Install Sway
```
sudo pacman -S --needed swaybg swaylock swayidle waybar wofi dmenu brightnessctl grim slurp pavucontrol foot xorg-xwayland polkit lightdm-gtk-greeter
```
### Config lightdm-gtk-greeter
```
sudo dpkg-reconfigure lightdm && systemctl daemon-reload
systemctl enable lightdm.service
```
### Required Extras
```
sudo pacman -S ttf-font-awesome polkit-kde-agent xorg-xhost xdg-desktop-portal xdg-desktop-portal-wlr thunar thunar-archive-plugin wl-clipboard network-manager-applet gvfs 
```
### Added Dynamic Autotiling for sway
```
paru -S autotiling
```
## Hyprland Install + Dependencies
1. **Clone the Repository and Set Dotfiles**
   ```bash
   git clone https://github.com/swapnanil1/dotfiles  
   cd dotfiles
   mv * ~/
 
## Install Necessary Applications
2. **Install the required applications for the Arch Linux with Hyprland setup:**
   ```bash
   sudo pacman -S --needed ark dolphin breeze-icons alacritty waybar wofi starship swaybg wireplumber polkit-kde-agent \
   xdg-desktop-portal-hyprland brightnessctl ttf-font-awesome pavucontrol bluez bluez-utils blueman \
   network-manager-applet gvfs thunar thunar-archive-plugin timeshift neovim grim slurp
   ```
   For Desktop
   ```bash
   sudo pacman -S --needed dunst waybar polkit-kde-agent swaybg ttf-font-awesome ark dolphin breeze-icons \
   alacritty waybar wofi starship swaybg wireplumber polkit-kde-agent xdg-desktop-portal-hyprland brightnessctl \
   ttf-font-awesome pavucontrol network-manager-applet gvfs xdg-desktop-portal-wlr
   ```
## Enable Necessary Startup Services & Set Permissions
3. **Enable the required services for startup and set up permissions:**
   ```bash
   sudo systemctl enable bluetooth.service
   sudo systemctl enable cronie.service
   chmod +x ~/.config/hypr/xdg-portal-hyprland

4. **Setup auto-cpufreq (for LAPTOP)**
**Disable intel_pstate/amd-pstate and set to acpi-cpufreq**

   **For GRUB** 
   GRUB_CMDLINE_LINUX_DEFAULT="quiet splash intel_pstate=disable"

   **For SYSTEMD-BOOT**
   vim /boot/loader/entries/arch.conf
   Add "intel_pstate=disable" & "mitigations=off" at the end of options 
   ```bash
   yay -S auto-cpufreq
   sudo auto-cpufreq --install
   systemctl enable --now auto-cpufreq 
## Additional Information
Try using flameshot-git as screenshot tool it works with wayland wm

The repository includes configurations for other applications as well. Feel free to explore and customize them according to your preferences.

Stay tuned for updates, as more configurations may be added in the future.

Enjoy your personalized Arch Linux with the Hyprland window manager! If you have any questions or suggestions, feel free to open an issue or reach out. Happy ricing!

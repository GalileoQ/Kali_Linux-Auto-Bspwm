# Auto-BSPWM
> A fully automated Bash script to set up a professional and aesthetic hacking environment on Kali Linux using the [bspwm](https://github.com/baskerville/bspwm) tiling window manager.


## 📖 About

**Auto-BSPWM** is a configuration script designed for penetration testers, ethical hackers, and Linux enthusiasts who want a minimal, powerful, and aesthetic desktop setup on Kali Linux. It handles everything from installing and configuring `bspwm`, `polybar`, `themes`, and wallpapers, to adding custom scripts and shortcuts for efficient daily use.

## overview0
![overview0](/assets/overview0.png "overview0")


## 🎥 Demo del Proyecto

[![Ver video resumen](https://img.youtube.com/vi/8aXKnHM00i4/0.jpg)](https://www.youtube.com/watch?v=8aXKnHM00i4)

https://www.youtube.com/watch?v=8aXKnHM00i4&t=34s

Haz clic en la imagen para ver una demo rápida del proyecto en acción.

---

## ✅ Requirements

- Kali Linux (tested on latest rolling release)
- Internet connection
- At least 2 GB of free disk space
- Recommended: run on a virtual machine or clean installation

---

## ⚙️ Installation

1. Update your system:

```bash
sudo apt update && sudo apt upgrade -y
```

2. Clone this repository and enter the directory:

```bash
git clone https://github.com/GalileoQ/Kali_Linux-Auto-Bspwm.git
cd Auto-Bspwm
```

3. Make the main script executable:

```bash
chmod +x setup.sh
```

4. Run the script:

```bash
./setup.sh
```

5. After completion, reboot your system. On the login screen, choose `bspwm` as your window manager.

> ⚠️ **Warning**: This script modifies core configurations (e.g., GRUB, bspwmrc, polybar, themes). Back up your data and/or use a virtual machine for testing.

---

## 🚀 Usage

The most important shortcut is:

```bash
Win + Alt + R
```

This will **reset key components** of your setup (e.g., Polybar, wallpaper, transparency) in case something breaks or looks off.

To view all available shortcuts, type:

```bash
shortcuts
```

You’ll see a multilingual list of key combinations and their functions.

---

## 🔊 Keyboard Sound

A sound feedback feature is enabled via a systemd user service called `neptune.service`.

- **Location**:  
  `~/.config/systemd/user/neptune.service`

If you don’t like this feature, feel free to stop and disable it:

```bash
systemctl --user stop neptune.service
systemctl --user disable neptune.service
```

---

## 🎨 Wallpapers & Themes

# background
A custom script called `background` is located at:

```bash
~/.config/polybar/shapes/scripts/background
```

This script changes the wallpaper on your main lock screen in Kali Linux.

---

### Themes

You can extract a color palette from an image and apply it to your entire environment:

```bash
themes Wallpapers/your-image-name.jpg
```

> 📝 **Note**: This may cause minor terminal issues. Just close and reopen your terminal to fix it.

The theme will be applied to:
- Polybar
- Terminal
- Wallpaper

When you use `Win + Alt + R`, the default wallpaper is restored but the color scheme remains.

To change the default wallpaper, edit the following line in:

```bash
~/.config/bspwm/bspwmrc
```

Change:

```bash
feh --bg-fill ~/Wallpapers/your-image-name.jpg
```

to your preferred image path.

---

## 🖼 Environment Overview

Here’s what your desktop will look like once set up:

## Overview of the environment

![overview0](/assets/overview0.1.png "overview0.1")
## overview1
![overview1](/assets/overview1.png "overview1")

![overview2](/assets/overview1.2.png "overview2")

![overview3](/assets/overview1.3.png "overview3")
## overview2
![overview1](/assets/overview2.png "overview1")

![overview2](/assets/overview2.1.png "overview2")

![overview3](/assets/overview2.3.png "overview3")
## overview3
![overview1](/assets/overview3.png "overview1")

![overview2](/assets/overview3.1.png "overview2")

![overview3](/assets/overview3.3.png "overview3")
## overview4
![overview1](/assets/overview4.png "overview1")

![overview2](/assets/overview4.1.png "overview2")

![overview3](/assets/overview4.3.png "overview3")
## overview5
![overview1](/assets/overview5.png "overview1")

![overview2](/assets/overview5.1.png "overview2")

![overview3](/assets/overview5.3.png "overview3")
## overview6
![overview1](/assets/overview6.png "overview1")

![overview2](/assets/overview6.1.png "overview2")

![overview3](/assets/overview6.3.png "overview3")
## overview7
![overview1](/assets/overview7.png "overview1")

![overview2](/assets/overview7.1.png "overview2")

![overview3](/assets/overview7.3.png "overview3")
## overview8
![overview1](/assets/overview8.png "overview1")

![overview2](/assets/overview8.1.png "overview2")

![overview3](/assets/overview8.3.png "overview3")
## overview9
![overview1](/assets/overview9.png "overview1")

![overview2](/assets/overview9.1.png "overview2")

![overview3](/assets/overview9.3.png "overview3")
## overview10
![overview1](/assets/overview10.png "overview1")

![overview2](/assets/overview10.1.png "overview2")

![overview3](/assets/overview10.3.png "overview3")

---

## ⌨️ Keyboard Shortcuts

You can access the shortcut list anytime by running:

```bash
shortcuts
```

It supports multiple languages and shows commands like:
- Workspace navigation
- Tiling controls
- App launching
- System controls (lock, reboot, etc.)

![shortcuts](/assets/shortcuts.png)

---

## 🧩 Software Used

| Function        | Tool                                                                 |
|----------------|----------------------------------------------------------------------|
| Window Manager | [bspwm](https://github.com/baskerville/bspwm)                        |
| Hotkeys        | [sxhkd](https://github.com/baskerville/sxhkd)                        |
| Lock Screen    | [i3lock-fancy](https://github.com/meskarune/i3lock-fancy)            |
| Shell          | [zsh](https://www.zsh.org/) + [Oh My Zsh](https://github.com/ohmyzsh)|
| Theme (ZSH)    | [Powerlevel10k](https://github.com/romkatv/powerlevel10k)            |
| Panel/Bar      | [polybar](https://github.com/polybar/polybar)                        |
| Bar Themes     | [polybar-themes](https://github.com/adi1090x/polybar-themes)         |
| Compositor     | [picom](https://github.com/yshui/picom)                              |
| File Manager   | [Thunar](https://docs.xfce.org/xfce/thunar/start)                    |
| Fonts          | [Iosevka](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Iosevka), [Hack](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack) |
| App Launcher   | [rofi](https://github.com/davatorium/rofi)                           |
| Browsers       | [Firefox](https://www.mozilla.org/en-US/firefox/new/)                |
| Terminals      | [Kitty](https://sw.kovidgoyal.net/kitty/), [QTerminal](https://github.com/lxqt/qterminal) |
| Wallpapers     | [feh](https://github.com/derf/feh)                                   |
| Screenshots    | [Flameshot](https://flameshot.org/)                                  |
| neptune        | [nepture](https://github.com/M1ndo/Neptune/releases/tag/v1.0.2)                                  |
---

## 🧩 Troubleshooting

- **Polybar not launching properly**  
  Run:
  ```bash
  polybar-msg cmd restart
  ```

- **Keyboard sound not working**  
  Check if the service is running:
  ```bash
  systemctl --user status neptune.service
  ```

- **Terminal color issues after changing theme**  
  Just close and reopen the terminal.

- **Wrong wallpaper after reboot**  
  Press `Win + Alt + R` or edit the line in `bspwmrc` as explained above.

---

## ⚡️ Table of Contents
- [About](#-about)
- [Requirements](#-requirements)
- [Installation](#️-installation)
- [Usage](#-usage)
- [Keyboard Sound](#-keyboard-sound)
- [Wallpapers & Themes](#-wallpapers--themes)
- [Overview](#-environment-overview)
- [Keyboard Shortcuts](#️-keyboard-shortcuts)
- [Software Used](#-software-used)
- [Troubleshooting](#-troubleshooting)
- [Credits](#-credits)

---

## 🙏 Credits

This setup is inspired by configurations from the Linux ricing community, especially contributions.  
Special thanks to the developers of the open-source tools used.

---

## 👨‍💻 Author

**Galileo Muñoz (@Gamuke)**  
System Engineer | Ethical Hacker | Cybersecurity Specialist  
[LinkedIn](http://www.linkedin.com/in/galileoq) | [GitHub](https://github.com/GalileoQ)

---

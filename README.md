# Univalent Versatile Environment

<p align="center">
    <img src="img/univalent.svg">
</p>

Univalent Versatile Environment (UVE) is an Arch-based and user-friendly distro.

<p align="center">
    <a href="https://njb-fm.github.io/">
        <img src="https://img.shields.io/badge/Developer-NakamuraJukebox-blue?style=flat-square">
    </a>
    <a href="https://sourceforge.net/projects/univalentgnulinux/">
        <img src="https://img.shields.io/badge/Maintained%3F-Yes-green?style=flat-square">
    </a>
    <a href="LICENSE">
        <img src="https://img.shields.io/badge/license-BSD--3--clause-orange?style=flat-square">
    </a>
    <a href="https://www.archlinux.org/">
        <img src="https://img.shields.io/badge/BASE-Arch%20Linux-blue?style=flat-square&logo=arch-linux" alt="Base">
    </a>
    <a href="https://github.com/njb-fm/univalent/actions">
        <img src="https://img.shields.io/github/workflow/status/njb-fm/univalent/ShellCheck%20CL?style=flat-square">
    </a>
    <a href="https://github.com/njb-fm/univalent/issues">
        <img src="https://img.shields.io/github/issues/njb-fm/univalent?color=violet&style=flat-square&logo=github" alt="Issues">
    </a>
    <a href="https://github.com/njb-fm/univalent/stargazers">
        <img src="https://img.shields.io/github/stars/njb-fm/univalent?color=yellow&style=flat-square&logo=github">
    </a>
    <a href="https://github.com/njb-fm/univalent/network/members">
        <img src="https://img.shields.io/github/forks/njb-fm/univalent?style=flat-square">
    </a>
    <a href="https://github.com/njb-fm/univalent/releases">
        <img src="https://img.shields.io/github/v/release/njb-fm/univalent?color=blue&include_prereleases&style=flat-square" alt="release">
    </a>
    <a href="https://github.com/njb-fm/univalent/commits/">
        <img src="https://img.shields.io/github/last-commit/njb-fm/univalent?style=flat-square">
    </a>
    <a href="https://github.com/njb-fm/univalent/">
        <img src="https://img.shields.io/github/repo-size/njb-fm/univalent?style=flat-square">
    </a>
</p>

(C) 2022-2024 Naka-mura Jukebox.
----

# Overview
Univalent Versatile Environment is an Arch-based distro.

* Tuned desktop environments
* Relatively lightweight due to RT kernel
* 9 flavours - LXQt / Xfce / KDE Plasma / i3-wm / Cinnamon / GNOME / MATE / Budgie / Studio (with Plasma Desktop)

# How to build
## Preparation
※The host OS must be Arch or descended in a direct from from it.

1. Install Archiso.
```bash
sudo pacman -S archiso
```

2. Activate Univalent repo.
```bash
sudo pacman-key --recv-key 36F612F2 --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 36F612F2
sudo pacman -U 'https://njb-fm.github.io/uve-repo/univalent/x86_64/univalent-keyring-20231211-1-any.pkg.tar.zst' 'https://njb-fm.github.io/uve-repo/univalent/x86_64/univalent-mirrorlist-20231004-1-any.pkg.tar.zst'```

3. Activate Chaotic AUR.
```bash
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key FBA220DFC880C036
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
```

## Usage
```bash
git clone https://github.com/njb-fm/univalent
cd univalent
sudo mkarchiso -v profiles/<desktop>/<locale>
```

For an overview of each channel, please read the "README" in each root directory.


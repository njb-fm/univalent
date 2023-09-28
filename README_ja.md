# Univalent Versatile Environment

<p align="center">
    <img src="img/univalent.svg">
</p>

Univalent Versatile Environment (UVE)はArchを基に開発されるユーザーフレンドリーなディストロである。

<p align="center">
    <a href="https://njb-fm.github.io/">
        <img src="https://img.shields.io/badge/Developer-RadioNewJapan-blue?style=flat-square">
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

(C) 2022-2023 [新日本放送](https://njb-fm.github.io/)
----

# 概要
Univalent Versatile EnvironmentはArchベースのディストロ。

* 調整済みのデスクトップ環境
* RTカーネル採用で軽量
* 9つのフレーバー…LXQt / Xfce / KDE Plasma / i3-wm / Cinnamon / GNOME / MATE / Budgie / Studio (with Plasma Desktop)

# ビルド方法
## 準備
※ホストOSはArchか直系である必要がある。

1. ArchISOを導入する。
```bash
sudo pacman -S archiso
```

2. Univalentのリポジトリを使えるようにする。
```bash
sudo pacman-key --recv-key 36F612F2 --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 36F612F2
sudo pacman -U 'https://sourceforge.net/projects/univalentgnulinux/files/repo/univalent-stable/univalent-keyring-20230723-1-any.pkg.tar.zst' 'https://sourceforge.net/projects/univalentgnulinux/files/repo/univalent-stable/univalent-mirrorlist-20221215-1-any.pkg.tar.zst'
```

3. Chaotic AURを使えるようにする。
```bash
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key FBA220DFC880C036
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
```

## 使い方
```bash
git clone https://github.com/njb-fm/univalent
cd univalent
sudo mkarchiso -v profiles/<desktop>/<locale>
```

各チャンネルの概要については、それぞれのルートディレクトリにある「README」を参照されたい。

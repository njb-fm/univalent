# Univalent GNU/Linux
Profiles for Archiso. Testing channels are here -> https://github.com/Jin-Asanami/univaiso-testing-channels

Archiso用の設定ファイル群です。テスト用チャンネルはこちら → https://github.com/Jin-Asanami/univaiso-testing-channels

## Preparation 準備
※The host OS must be Arch or descended in a direct from from it. 親OSはArchかArch直系である必要があります。

1. Install Archiso. Archisoを導入する。
```bash
sudo pacman -S archiso
```

2. Activate Univalent repo. Univalentのリポジトリを有効化する。
```bash
sudo pacman-key --recv-key 048E45A1EC694BCE --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 048E45A1EC694BCE
sudo pacman -U 'https://osdn.net/projects/univalentgnulinux/storage/repo/univalent-stable/univalent-keyring-20221215-1-any.pkg.tar.zst' 'https://osdn.net/projects/univalentgnulinux/storage/repo/univalent-stable/univalent-mirrorlist-20221215-1-any.pkg.tar.zst'
echo -e "[univalent-stable]\nInclude = /etc/pacman.d/univalent-mirrorlist]" | sudo tee -a /etc/pacman.conf
```

3. Activate "Chaotic AUR" Chaotic AURを有効化する。
```bash
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key FBA220DFC880C036
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
echo -e "[chaotic-aur]\nInclude = /etc/pacman.d/chaotic-mirrorlist" | sudo tee -a /etc/pacman.conf
```

## Usage 使用法
```bash
git clone https://github.com/njb-fm/univaiso-channels
cd univaiso-channels
sudo mkarchiso -v <channel>/<locale>
```
For an overview of each channel, please read the "README" in each root directory.

チャンネル毎の概要については、それぞれのルートディレクトリに置いてある「README」をお読み下さい。

#!/bin/sh

set -eu

# ref https://qiita.com/takayamag/items/b632524e7994210fd1e8

# TimezoneをAsia/Tokyoへ変更する
sudo ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
sudo dpkg-reconfigure -f noninteractive tzdata

# パッケージを更新する
sudo apt -qqy upgrade

# 全てのlanugage-packをインストールする
sudo apt -qqy --no-install-recommends install -y locales-all
sudo locale-gen ja_JP.UTF-8
sudo update-locale LANG=ja_JP.UTF-8
sudo update-locale LANGUAGE="ja_JP:ja"

# 日本語フォントをインストールする
sudo apt -qqy --no-install-recommends install -y fonts-takao-gothic fonts-takao-mincho
sudo dpkg-reconfigure --frontend noninteractive locales
sudo fc-cache -fv


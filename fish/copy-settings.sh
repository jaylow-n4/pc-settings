#!/usr/bin/env bash

# 実行場所チェック: 親が pc-settings で、カレントが fish であることを期待する
if [[ "$(basename "$PWD")" != "fish" || "$(basename "$(dirname "$PWD")")" != "pc-settings" ]]; then
  echo "Please run this script from the pc-settings/fish directory."
  exit 1
fi

# 先にターゲットを準備
if [ ! -d "$HOME/.config/fish" ]; then
  echo "Creating $HOME/.config/fish directory..."
  mkdir -p "$HOME/.config/fish"
fi

# ./fish/ の中身を ~/.config/fish/ にコピー（サブディレクトリごとコピーされないように * を使用）
cp -r ./fish/* "$HOME/.config/fish/"

echo "Copied files to $HOME/.config/fish/"

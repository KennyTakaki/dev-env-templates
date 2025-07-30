#!/bin/bash
set -e

# Set up PNPM
npm install -g pnpm@10.13.0
export PNPM_HOME=/home/vscode/.local/share/pnpm
mkdir -p $PNPM_HOME
echo 'export PNPM_HOME=/home/vscode/.local/share/pnpm' >> /home/vscode/.bashrc
echo 'export PATH=$PNPM_HOME:$PATH' >> /home/vscode/.bashrc
export PATH=$PNPM_HOME:$PATH
# pnpm add -g turbo@latest --prefer-fresh
pnpm install

# 最新バージョンを設定（必要に応じて変更可）
GITLEAKS_VERSION="8.18.1"

# ダウンロードして展開
curl -sSL -o /tmp/gitleaks.tar.gz https://github.com/gitleaks/gitleaks/releases/download/v${GITLEAKS_VERSION}/gitleaks_${GITLEAKS_VERSION}_linux_x64.tar.gz
tar -xzf /tmp/gitleaks.tar.gz -C /tmp

# 実行権限を付与して配置
chmod +x /tmp/gitleaks
sudo mv /tmp/gitleaks /usr/local/bin/gitleaks


#!/bin/bash

# GitHub 仓库设置脚本
# 请先确保已登录 gh CLI: gh auth login

echo "🚀 开始创建 GitHub 仓库..."

# 1. 创建 GitHub 仓库
gh repo create andy-mao-strategy \
  --public \
  --description "Andy 定制版毛泽东战略思维系统 - 深度整合认知公理、Musk工程法、价值锚点的战略决策框架" \
  --homepage "https://github.com/yourusername/andy-mao-strategy"

# 2. 添加远程仓库
GITHUB_USERNAME=$(gh api user -q .login)
git remote add origin "https://github.com/$GITHUB_USERNAME/andy-mao-strategy.git"

# 3. 推送代码
git push -u origin main

echo "✅ 完成！仓库地址："
echo "https://github.com/$GITHUB_USERNAME/andy-mao-strategy"

# 4. 在浏览器中打开
gh repo view --web

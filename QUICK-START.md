# 🚀 快速开源指南

## 当前状态

✅ 本地 Git 仓库已完成
✅ 所有文件已提交（2 次 commit）
✅ 项目结构完整

---

## 方式 1：GitHub 网页创建（最简单）

### 步骤 1：创建仓库

1. 打开浏览器，访问：https://github.com/new

2. 填写信息：
   - **Repository name**: `andy-mao-strategy`
   - **Description**: `Andy 定制版毛泽东战略思维系统 - 深度整合认知公理、Musk工程法、价值锚点的战略决策框架`
   - **Public** (选中)
   - ⚠️ **不要勾选** "Add a README file"
   - ⚠️ **不要勾选** "Add .gitignore"
   - ⚠️ **不要勾选** "Choose a license"

3. 点击 **"Create repository"**

### 步骤 2：推送代码

复制 GitHub 页面显示的命令（会显示你的用户名），或运行：

```bash
cd /Users/andy/Documents/AICode/mao-strategy-skill

# 替换 YOUR_USERNAME 为你的 GitHub 用户名
git remote add origin https://github.com/YOUR_USERNAME/andy-mao-strategy.git
git branch -M main
git push -u origin main
```

### 步骤 3：验证

访问 `https://github.com/YOUR_USERNAME/andy-mao-strategy` 查看项目

---

## 方式 2：使用 Personal Access Token

如果 `gh auth login` 一直失败，使用这个方法：

### 步骤 1：生成 Token

1. 访问：https://github.com/settings/tokens/new
2. **Note**: `Andy Mao Strategy - CLI Access`
3. **Expiration**: 90 days
4. **Select scopes**: 勾选 `repo` (所有子项)
5. 点击 **"Generate token"**
6. **复制 token**（只显示一次！）

### 步骤 2：使用 Token 登录

```bash
cd /Users/andy/Documents/AICode/mao-strategy-skill

# 将 YOUR_TOKEN 替换为刚才复制的 token
echo "YOUR_TOKEN" | gh auth login --with-token

# 验证登录
gh auth status
```

### 步骤 3：创建并推送

```bash
# 创建仓库
gh repo create andy-mao-strategy --public --source=. --remote=origin

# 推送代码
git push -u origin main

# 在浏览器打开
gh repo view --web
```

---

## 方式 3：一键脚本（需要先登录）

如果 `gh auth login` 成功，直接运行：

```bash
cd /Users/andy/Documents/AICode/mao-strategy-skill
./setup-github.sh
```

---

## 常见问题

### Q: 提示 "authentication required"？

A: GitHub 需要身份验证。使用方式 1（网页创建）或方式 2（Token）。

### Q: 推送时提示 403 错误？

A: 
```bash
# 检查远程仓库地址
git remote -v

# 如果使用 HTTPS，需要输入用户名和 token（不是密码）
# 用户名: 你的 GitHub 用户名
# 密码: Personal Access Token（从 https://github.com/settings/tokens 生成）
```

### Q: 想使用 SSH 而不是 HTTPS？

A:
```bash
# 先配置 SSH key（如果还没有）
# 参考：https://docs.github.com/en/authentication/connecting-to-github-with-ssh

# 修改远程仓库地址
git remote set-url origin git@github.com:YOUR_USERNAME/andy-mao-strategy.git

# 推送
git push -u origin main
```

---

## 推送成功后的后续步骤

### 1. 添加 Topics

访问仓库页面 → Settings → Topics，添加：
- `strategy`
- `decision-making`
- `first-principles`
- `mao-zedong`
- `cognitive-framework`
- `musk-methodology`

### 2. 更新 README 链接

替换 README.md 中的 `yourusername` 为你的实际 GitHub 用户名：

```bash
# 获取你的用户名
GITHUB_USERNAME=$(git config user.name)

# 或者手动替换
sed -i '' 's/yourusername/YOUR_ACTUAL_USERNAME/g' README.md
git add README.md
git commit -m "Update: 替换用户名链接"
git push
```

### 3. 创建 Release

```bash
gh release create v2.0.0 \
  --title "v2.0.0 - Andy 定制版初始发布" \
  --notes "深度整合认知公理、Musk工程法、价值锚点的战略决策框架

核心特性：
- 9 条认知公理深度整合
- 18 个毛泽东方法论工具
- Musk × 毛泽东协同框架
- 6 大应用场景 + 3 大决策模板
- 完整技术决策案例"
```

### 4. 分享到社区

**Twitter/X**:
```
刚开源了我的定制版战略思维系统 🚀

深度整合：
✅ 认知公理（熵增、还原、对立统一...）
✅ 毛泽东方法论（18个实战工具）
✅ Musk 工程法（删除优先）

用第一性原理 × 实战方法论解决真实问题

GitHub: https://github.com/YOUR_USERNAME/andy-mao-strategy
```

---

## 当前项目信息

- **项目位置**: `/Users/andy/Documents/AICode/mao-strategy-skill`
- **文件数**: 9 个
- **总行数**: ~1,900 行
- **Git 提交**: 2 次
- **状态**: ✅ 准备推送

---

## 需要帮助？

如果遇到问题：
1. 检查网络连接
2. 确认 GitHub 账号可以正常访问
3. 参考 `GITHUB-SETUP.md` 的详细说明
4. 或直接使用方式 1（网页创建），最简单可靠

---

**推荐**: 使用方式 1（网页创建），只需 2 分钟！

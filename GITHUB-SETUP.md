# 开源到 GitHub 指南

## 当前状态

✅ 本地仓库已准备完毕
- Git 仓库已初始化
- 首次提交已完成
- 所有文件已暂存

## 下一步操作

### 方式 1：使用自动化脚本（推荐）

```bash
# 1. 先登录 GitHub CLI（如果还没登录）
gh auth login

# 2. 运行设置脚本
cd /Users/andy/Documents/AICode/mao-strategy-skill
./setup-github.sh
```

脚本会自动完成：
- 创建 GitHub 公开仓库
- 添加远程仓库地址
- 推送代码
- 在浏览器中打开仓库

---

### 方式 2：手动操作

#### 步骤 1：登录 GitHub CLI

```bash
gh auth login
```

选择：
- GitHub.com
- HTTPS
- Login with a web browser

#### 步骤 2：创建仓库

```bash
gh repo create andy-mao-strategy \
  --public \
  --description "Andy 定制版毛泽东战略思维系统 - 深度整合认知公理、Musk工程法、价值锚点的战略决策框架"
```

#### 步骤 3：添加远程仓库

```bash
# 获取你的 GitHub 用户名
GITHUB_USERNAME=$(gh api user -q .login)

# 添加远程仓库
git remote add origin "https://github.com/$GITHUB_USERNAME/andy-mao-strategy.git"
```

#### 步骤 4：推送代码

```bash
git push -u origin main
```

---

### 方式 3：通过 GitHub 网页创建

如果 gh CLI 登录有问题，可以：

1. 访问 https://github.com/new
2. 填写信息：
   - Repository name: `andy-mao-strategy`
   - Description: `Andy 定制版毛泽东战略思维系统 - 深度整合认知公理、Musk工程法、价值锚点的战略决策框架`
   - Public
   - **不要**勾选 "Initialize this repository with a README"
3. 点击 "Create repository"
4. 在本地运行：

```bash
cd /Users/andy/Documents/AICode/mao-strategy-skill

# 替换 YOUR_USERNAME 为你的 GitHub 用户名
git remote add origin https://github.com/YOUR_USERNAME/andy-mao-strategy.git
git push -u origin main
```

---

## 验证成功

推送成功后，你应该能看到：

```
✅ 5 个文件已推送到 GitHub:
  - README.md (项目介绍)
  - andy-mao-strategy.md (核心 skill 文件)
  - LICENSE (MIT 许可证)
  - examples/tech-decision.md (技术决策案例)
  - .gitignore
```

访问仓库地址：`https://github.com/YOUR_USERNAME/andy-mao-strategy`

---

## 后续改进

### 建议添加的内容

1. **更多案例**
   ```bash
   mkdir -p examples
   # 添加：团队诊断案例、竞争战略案例等
   ```

2. **详细文档**
   ```bash
   mkdir -p docs
   # 添加：认知公理详解、18个方法论详解等
   ```

3. **GitHub Actions**
   - 自动检查 Markdown 格式
   - 自动生成目录

4. **GitHub Topics**
   在仓库设置中添加 topics:
   - `strategy`
   - `decision-making`
   - `first-principles`
   - `mao-zedong`
   - `cognitive-framework`

---

## 分享到社区

### 推荐平台

1. **Twitter/X**
   ```
   刚开源了我的定制版战略思维系统 🚀
   
   深度整合：
   - 认知公理（熵增、还原、对立统一...）
   - 毛泽东方法论（18个实战工具）
   - Musk 工程法（删除优先）
   
   用第一性原理 × 实战方法论解决真实问题
   
   GitHub: https://github.com/YOUR_USERNAME/andy-mao-strategy
   ```

2. **Hacker News**
   - Title: "Andy's Strategic Thinking System: Mao's Methods × First Principles"
   - URL: GitHub 仓库地址

3. **少数派/知乎**
   - 写一篇详细的方法论介绍文章
   - 附上 GitHub 链接

---

## 项目维护

### 定期更新

```bash
# 1. 修改文件后
git add .
git commit -m "描述你的修改"
git push

# 2. 查看提交历史
git log --oneline

# 3. 创建 release
gh release create v2.0.0 --title "Andy 定制版 v2.0" --notes "初始发布"
```

### 接受贡献

如果有人提 PR：
```bash
# 查看 PR
gh pr list

# 检出 PR 到本地测试
gh pr checkout PR_NUMBER

# 合并 PR
gh pr merge PR_NUMBER
```

---

## 常见问题

### Q: gh auth login 失败怎么办？

**A**: 使用方式 3（网页创建），或者：
```bash
# 生成 GitHub Personal Access Token
# 访问：https://github.com/settings/tokens/new
# 权限选择：repo (全部)

# 使用 token 登录
gh auth login --with-token < token.txt
```

### Q: 推送时提示 403 错误？

**A**: 检查远程仓库地址：
```bash
git remote -v
# 如果是 https，确保已登录 gh CLI
# 或者改用 SSH：
git remote set-url origin git@github.com:YOUR_USERNAME/andy-mao-strategy.git
```

### Q: 想修改仓库描述？

**A**: 
```bash
gh repo edit --description "新的描述"
```

---

## 完成清单

- [ ] 登录 GitHub CLI (`gh auth login`)
- [ ] 运行设置脚本或手动创建仓库
- [ ] 验证推送成功（访问 GitHub 仓库页面）
- [ ] 添加 GitHub Topics
- [ ] 更新 README 中的仓库链接（替换 `yourusername`）
- [ ] （可选）创建 v2.0.0 release
- [ ] （可选）分享到社区

---

**需要帮助？** 告诉我你在哪一步遇到了问题，我会帮你解决。

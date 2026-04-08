# 🚀 启用GitHub Pages详细步骤指南

## 📍 当前状态
- ✅ 代码已推送到GitHub
- ❌ GitHub Pages尚未启用
- 🔗 仓库地址：https://github.com/wangzhprince-wq/earth-materials-research

## 🎯 启用GitHub Pages步骤

### 步骤1：访问仓库设置页面
**直接点击这个链接：**
```
https://github.com/wangzhprince-wq/earth-materials-research/settings/pages
```

或者手动导航：
1. 访问：https://github.com/wangzhprince-wq/earth-materials-research
2. 点击顶部菜单的 **"Settings"**
3. 在左侧菜单找到 **"Pages"**（靠近底部）

### 步骤2：配置GitHub Pages
在Pages设置页面，你会看到：

**1. Source部分：**
```
Build and deployment
┌─────────────────────────────────────┐
│ Source: [选择分支] ▼                │
│       ┌─────────────────────────┐   │
│       │ Deploy from a branch    │   │
│       │ GitHub Actions          │   │
│       └─────────────────────────┘   │
└─────────────────────────────────────┘
```

**操作：**
- 点击下拉菜单
- 选择 **"Deploy from a branch"**

**2. Branch部分：**
```
Branch: [选择分支] ▼
      ┌─────────────────────────┐
      │ main                    │
      │ ...其他分支...          │
      └─────────────────────────┘
```

**操作：**
- 点击下拉菜单
- 选择 **"main"**

**3. Folder部分：**
```
Folder: [选择文件夹] ▼
       ┌─────────────────────────┐
       │ / (root)                │
       │ /docs                   │
       └─────────────────────────┘
```

**操作：**
- 点击下拉菜单
- 选择 **"/ (root)"**

### 步骤3：保存设置
**最后：**
- 点击 **"Save"** 按钮
- 等待几秒钟，页面会刷新

### 步骤4：确认启用成功
保存后你会看到：
```
Your site is live at https://wangzhprince-wq.github.io/earth-materials-research/
```

并且有一个绿色提示：
```
✅ GitHub Pages source saved
```

## ⏱️ 等待部署
启用后需要等待 **1-2分钟** 让GitHub部署完成。

**部署期间你会看到：**
1. 黄色提示：`Your site is being built`
2. 然后变成绿色：`Your site is published at...`

## 🔍 验证是否成功
**1. 检查部署状态：**
- 刷新Pages设置页面
- 查看是否有绿色成功提示

**2. 访问网站：**
```
https://wangzhprince-wq.github.io/earth-materials-research/
```

**应该看到：**
- 《读地球的人》纪录片素材研究标题
- 42项免费素材 + 28项参考素材统计
- 5个脚本章节导航
- 搜索功能和素材分类

## 🆘 常见问题解决

### 问题1：找不到Pages设置
**解决：**
- 确认你是仓库所有者或有管理员权限
- 确保仓库是Public（公开）
- 尝试直接访问：`https://github.com/wangzhprince-wq/earth-materials-research/settings/pages`

### 问题2：保存后没有变化
**解决：**
- 等待1-2分钟刷新页面
- 清除浏览器缓存
- 尝试用无痕模式访问

### 问题3：显示404错误
**解决：**
- 确认选择了正确的分支（main）
- 确认选择了正确的文件夹（/ (root)）
- 等待更长时间（首次部署可能需要3-5分钟）

### 问题4：部署失败
**解决：**
1. 检查仓库是否有`index.html`文件（我们有）
2. 检查文件路径是否正确
3. 可以尝试重新保存设置

## 📱 手机端操作
如果使用手机：
1. 打开GitHub App或浏览器
2. 访问仓库页面
3. 点击右上角三个点 → Settings
4. 找到Pages设置
5. 按上述步骤配置

## 🎯 成功后的操作
**启用成功后：**

### 1. 分享给团队
```
项目在线地址：
https://wangzhprince-wq.github.io/earth-materials-research/
```

### 2. 开始使用
- 按章节查找素材
- 搜索关键词
- 查看免费vs参考建议

### 3. 后续更新
如需更新内容：
```bash
# 修改文件后
git add .
git commit -m "更新描述"
git push origin main
# GitHub Pages会自动更新
```

## 📞 紧急支持
如果按照以上步骤仍然无法启用：

**方案A：截图给我看**
- 截取Pages设置页面
- 我帮你分析问题

**方案B：手动创建配置文件**
在仓库根目录添加`.github/workflows/deploy.yml`

**方案C：使用GitHub CLI工具**
```bash
gh repo view --web
gh pages enable
```

---
**立即操作，启用你的《读地球的人》素材研究平台！** 🎬🌍

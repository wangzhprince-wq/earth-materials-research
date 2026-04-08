# 🚀 《读地球的人》素材研究项目部署指南

## ✅ 本地项目已创建完成

**项目位置：**
```
/Users/louyanfei/.openclaw/workspace/earth-materials-research/
```

**包含文件：**
1. `index.html` - 主页面（完整交互界面）
2. `css/style.css` - 专业样式
3. `data/free-materials.json` - 42项免费素材
4. `data/reference-materials.json` - 28项参考素材
5. `README.md` - 项目说明
6. `USAGE.md` - 使用指南
7. `deploy-to-github.sh` - 部署脚本

## 🎯 立即预览项目

### 方法1：浏览器直接打开
```bash
cd /Users/louyanfei/.openclaw/workspace/earth-materials-research
open index.html
```

### 方法2：查看页面效果
页面包含：
- 🎬 专业标题和统计信息
- 📊 42项免费素材 + 28项参考素材
- 🚦 5个脚本章节导航
- 🔍 素材搜索功能
- 💡 具体获取建议

## 🌐 部署到GitHub Pages

### 步骤1：在GitHub创建仓库
1. 访问 https://github.com/wangzhprince-wq?tab=repositories
2. 点击 "New" 创建新仓库
3. 仓库名：`earth-materials-research`
4. 描述：《读地球的人》纪录片素材研究
5. 选择：Public
6. **不要**初始化README（我们已经有了）
7. 点击 "Create repository"

### 步骤2：获取仓库URL
创建后你会看到类似：
```
https://github.com/wangzhprince-wq/earth-materials-research.git
```

### 步骤3：推送代码
在终端运行：
```bash
cd /Users/louyanfei/.openclaw/workspace/earth-materials-research

# 如果之前配置过远程仓库，先移除
git remote remove origin 2>/dev/null || true

# 添加你的GitHub仓库
git remote add origin https://github.com/wangzhprince-wq/earth-materials-research.git

# 推送代码
git push -u origin main
```

### 步骤4：启用GitHub Pages
1. 进入仓库页面：https://github.com/wangzhprince-wq/earth-materials-research
2. 点击 "Settings" → "Pages"
3. Source: 选择 "main" branch
4. Folder: 选择 "/ (root)"
5. 点击 "Save"
6. 等待1-2分钟部署完成

### 步骤5：访问在线版本
部署完成后访问：
```
https://wangzhprince-wq.github.io/earth-materials-research/
```

## 📱 项目功能预览

### 1. 素材分类
- **✅ 免费可商用**：NASA、USGS、NOAA、Wikimedia等
- **⚠️ 有版权参考**：Getty、BBC、Nature、博物馆等

### 2. 脚本章节对应
- 序章｜金句 Intro (1分30s)
- 第一章｜拥有莱伊尔之眼 (2分20s)
- 第二章｜一封邀请函 (2分20s)
- 第三章｜运动着的地球 (2分20s)
- 结尾｜读地球的人 (1分钟)

### 3. 搜索功能
输入关键词如：
- "显微镜" - 实验室素材
- "陨石" - 恐龙灭绝素材
- "板块运动" - 地质动画
- "达尔文" - 历史插图

### 4. 数据详情
- **42项免费素材**：来源、授权、质量、适用章节
- **28项参考素材**：版权分析、成本评估、替代建议

## 💡 使用建议

### 对于纪录片制作
1. **研究阶段**：使用本工具系统化查找素材
2. **规划阶段**：确定免费/参考/自制比例
3. **制作阶段**：实拍关键内容 + 免费素材补充
4. **提升阶段**：参考专业作品优化质量

### 成本控制策略
- **70%免费素材**：NASA/USGS/NOAA等政府资源
- **20%参考学习**：研究专业作品风格
- **10%关键投资**：必须的高质量内容

## 🔧 故障排除

### 如果推送失败
```bash
# 强制推送（覆盖远程）
git push -f origin main
```

### 如果GitHub Pages不显示
1. 检查仓库是否为Public
2. 确认Pages设置正确
3. 等待几分钟让部署完成
4. 清除浏览器缓存

### 如果需要更新
```bash
# 修改文件后
git add .
git commit -m "更新描述"
git push origin main
```

## 📞 支持

如有部署问题：
1. 检查网络连接
2. 确认GitHub账户权限
3. 查看错误信息具体内容
4. 可以重新运行部署脚本

---
**项目已准备就绪，等待你的部署！** 🎬🌍

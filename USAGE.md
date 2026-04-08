# 《读地球的人》素材研究项目使用指南

## 🎯 项目目的
为纪录片《读地球的人》脚本系统性地寻找、分类和评估所需视觉素材。

## 📁 文件结构
```
earth-materials-research/
├── index.html              # 主页面 - 素材分类展示
├── README.md              # 项目说明
├── USAGE.md              # 本使用指南
├── deploy-to-github.sh   # 部署脚本
├── css/
│   └── style.css         # 样式文件
├── js/                   # (预留JavaScript目录)
└── data/
    ├── free-materials.json     # 免费素材数据库
    └── reference-materials.json # 参考素材数据库
```

## 🔍 如何使用

### 1. 本地预览
```bash
# 在项目目录中
open index.html  # Mac
# 或
start index.html # Windows
# 或直接双击index.html文件
```

### 2. 查看素材分类
- **✅ 免费可商用素材**：NASA、USGS、Wikimedia等
- **⚠️ 有版权但值得参考**：Getty、BBC、Nature等

### 3. 按脚本章节查找
页面包含5个章节导航：
- 序章｜金句 Intro
- 第一章｜拥有莱伊尔之眼
- 第二章｜一封邀请函
- 第三章｜运动着的地球
- 结尾｜读地球的人

### 4. 搜索功能
在搜索框输入关键词（如：显微镜、陨石、板块运动）获取素材建议。

## 📊 素材数据库

### free-materials.json
包含42项免费素材的详细信息：
- 来源（NASA、USGS、NOAA等）
- 授权类型（Public Domain、CC0、CC-BY等）
- 适用章节
- 质量评估
- 使用建议

### reference-materials.json
包含28项参考素材分析：
- 版权状态和成本
- 参考价值（构图、叙事、科学准确性）
- 免费替代方案建议
- 风格参考分析

## 🚀 部署到GitHub Pages

### 方法一：使用部署脚本
```bash
./deploy-to-github.sh
```
按照脚本提示操作。

### 方法二：手动部署
1. 在GitHub创建新仓库：`earth-materials-research`
2. 推送代码：
   ```bash
   git init
   git add .
   git commit -m "初始提交"
   git remote add origin https://github.com/你的用户名/earth-materials-research.git
   git branch -M main
   git push -u origin main
   ```
3. 启用GitHub Pages：
   - Settings → Pages
   - Source: main branch
   - Folder: / (root)

## 🎨 设计特点

### 视觉风格
- 科学纪录片风格配色（深蓝+青绿）
- 卡片式布局，清晰分类
- 响应式设计，支持移动设备
- 交互式章节导航

### 用户体验
- 一键查看素材来源
- 实时搜索建议
- 授权状态清晰标注
- 章节对应关系明确

## 🔧 扩展开发

### 添加新素材
1. 编辑 `data/free-materials.json` 或 `data/reference-materials.json`
2. 按照现有格式添加新条目
3. 刷新页面查看效果

### 自定义样式
1. 编辑 `css/style.css`
2. 修改颜色变量：
   ```css
   :root {
       --primary-blue: #1a2980;
       --secondary-teal: #26d0ce;
       --accent-gold: #ffd700;
   }
   ```

### 添加交互功能
1. 在 `js/` 目录创建新JavaScript文件
2. 在 `index.html` 中引入
3. 实现所需功能（如：筛选、排序、导出）

## 📈 项目优势

### 对于纪录片制作
- **系统化**：避免遗漏重要素材
- **版权清晰**：区分免费和需授权内容
- **效率提升**：快速找到合适素材
- **成本控制**：优先使用免费资源

### 对于团队协作
- **集中管理**：所有素材信息在一个地方
- **可视化**：直观的网页界面
- **可分享**：通过GitHub Pages公开访问
- **可更新**：随时添加新发现的素材

## 🆘 常见问题

### Q: 如何确认素材真的可以免费使用？
A: 点击素材链接，查看原始来源的授权说明。NASA、USGS等政府机构的素材通常是Public Domain。

### Q: 参考素材可以直接使用吗？
A: 不可以。参考素材仅用于研究风格、构图、叙事方式。实际使用需要获得授权或寻找免费替代品。

### Q: 项目需要持续维护吗？
A: 建议定期更新：
1. 发现新的免费素材源
2. 更新已失效的链接
3. 根据实际拍摄需求调整

### Q: 可以用于其他纪录片项目吗？
A: 可以。项目结构通用，只需：
1. 修改脚本章节
2. 更新素材需求
3. 调整配色和文案

## 📞 支持与反馈
如有问题或建议，请通过项目GitHub仓库提交Issue。

---
**祝《读地球的人》纪录片制作顺利！** 🎬🌍

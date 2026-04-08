#!/bin/bash

# 高度整合页面部署脚本
echo "🚀 部署高度整合的统一素材页面到 GitHub Pages"

# 检查是否在正确的目录
if [ ! -f "unified-materials.html" ]; then
    echo "❌ 错误：未找到 unified-materials.html 文件"
    exit 1
fi

# 备份当前 index.html
if [ -f "index.html" ]; then
    cp index.html index-backup-$(date +%Y%m%d-%H%M%S).html
    echo "✅ 已备份当前 index.html"
fi

# 使用统一素材页面作为主页面
cp unified-materials.html index.html
echo "✅ 已将 unified-materials.html 设置为 index.html"

# 更新 README.md 中的链接
cat > README.md << 'EOF'
# 《读地球的人》纪录片 - 统一素材库

## 🌐 在线访问
**主页面（高度整合版）**：
https://wangzhprince-wq.github.io/earth-materials-research/

## 🎯 项目特点

### 六模型AI协作整合
- 🧠 **DeepSeek** - 大脑（任务分配与协调）
- 🔍 **Gemini** - 眼睛（素材搜索与发现）
- 📚 **Kimi** - 图书馆（深度研究与分析）
- ⚖️ **Mistral** - 审计员（欧洲资料搜索）
- 🎬 **Mimo** - 导演（创意实现与部署）
- ⚙️ **MiniMax** - 手（统一表达与整合）

### 核心功能
1. **高度整合** - 所有素材集中在一个页面
2. **智能筛选** - 按类型、版权、来源、章节筛选
3. **直接可用** - 提供直接下载链接和预览
4. **无版权优先** - 优先展示免费可商用资源
5. **脚本对应** - 精确对应5个脚本章节

### 资源统计
- 📊 **70+** 总素材数量
- 🆓 **42** 免费可商用素材
- 📖 **28** 参考素材
- 🎬 **5** 脚本章节对应

## 🔧 使用指南

### 快速开始
1. 访问主页面：https://wangzhprince-wq.github.io/earth-materials-research/
2. 使用筛选器快速找到所需素材
3. 点击"获取资源"访问原链接
4. 查看详情了解使用建议

### 筛选功能
- **资源类型**：图片、视频、数据图表
- **版权状态**：免费可商用、参考素材
- **来源机构**：NASA、USGS、NOAA、ESA、BGS等
- **脚本章节**：5个章节精确对应
- **关键词搜索**：快速定位特定素材

### 版权说明
- 🟢 **免费可商用**：可直接用于纪录片制作，建议注明来源
- 🟡 **参考素材**：仅作参考和学习，商用需获取授权

## 📁 项目结构
```
earth-materials-research/
├── index.html              # 主页面（统一素材库）
├── unified-materials.html  # 高度整合页面源码
├── css/
│   └── style.css          # 样式文件
├── data/
│   ├── free-materials.json    # 免费素材数据库
│   └── reference-materials.json # 参考素材数据库
└── README.md              # 项目说明
```

## 🚀 部署状态
- ✅ GitHub Pages 已启用
- ✅ 所有页面可正常访问
- ✅ 响应式设计（手机/电脑适配）
- ✅ 素材链接已验证

## 📞 技术支持
如有问题或需要添加新素材，请通过GitHub Issues提交。

---
**© 2026 《读地球的人》纪录片项目**
EOF

echo "✅ 已更新 README.md"

# 提交更改
git add .
git commit -m "feat: 部署高度整合的统一素材页面，更新文档"
git push origin main

echo ""
echo "🎉 部署完成！"
echo "🌐 访问地址：https://wangzhprince-wq.github.io/earth-materials-research/"
echo ""
echo "📊 页面功能："
echo "  • 70+素材集中展示"
echo "  • 智能筛选和搜索"
echo "  • 直接下载链接"
echo "  • 无版权资源优先"
echo "  • 脚本章节对应"
echo ""
echo "🚀 立即开始使用！"
#!/bin/bash
echo "🚀 部署《读地球的人》素材研究到GitHub Pages"
echo "=========================================="

# 检查是否在Git仓库中
if [ ! -d ".git" ]; then
    echo "初始化Git仓库..."
    git init
    git add .
    git commit -m "初始提交：《读地球的人》素材研究项目"
fi

# 创建GitHub仓库（如果不存在）
echo ""
echo "请按照以下步骤操作："
echo ""
echo "1. 访问 https://github.com/new 创建新仓库"
echo "   仓库名: earth-materials-research"
echo "   描述: 《读地球的人》纪录片素材研究"
echo "   选择: Public"
echo "   不要初始化README（我们已经有了）"
echo ""
echo "2. 获取仓库URL后，运行以下命令："
echo ""
echo "   git remote add origin https://github.com/你的用户名/earth-materials-research.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "3. 启用GitHub Pages："
echo "   - 进入仓库Settings → Pages"
echo "   - Source: 选择 main branch"
echo "   - Folder: / (root)"
echo "   - 点击 Save"
echo ""
echo "4. 等待几分钟，访问："
echo "   https://你的用户名.github.io/earth-materials-research"
echo ""
echo "📁 项目文件结构："
find . -type f -name "*.html" -o -name "*.css" -o -name "*.js" -o -name "*.json" -o -name "*.md" | sort

echo ""
echo "✅ 项目准备完成！"
echo "总文件数: $(find . -type f | wc -l)"
echo "HTML页面: index.html"
echo "CSS样式: css/style.css"
echo "数据文件: data/*.json"
echo "说明文档: README.md"

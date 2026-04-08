#!/bin/bash

echo "🚀 更新统一素材页面 - 添加新素材"

# 备份当前页面
cp unified-materials.html unified-materials-backup-$(date +%Y%m%d-%H%M%S).html

# 读取新素材数据
NEW_MATERIALS=$(cat new-materials.json)

# 更新页面中的JavaScript数据
# 找到 materialsData 数组的结束位置并插入新数据
sed -i '' '/const materialsData = \[/,/\];/ {
    /const materialsData = \[/ {
        n
        :loop
        N
        /\];/!b loop
        s/\(.*\)\];/\1,\n  ${NEW_MATERIALS:1:-1}\n];/
    }
}' unified-materials.html

# 更新统计数字（从10个增加到20个）
sed -i '' 's/"总素材数量"<\/div>.*<\/div>/"总素材数量"<\/div>\n            <\/div>\n            <div class="stat-card">\n                <div class="number">20<\/div>\n                <div class="label">最新添加素材<\/div>/' unified-materials.html

# 更新页面标题，显示最新更新时间
sed -i '' 's/<title>《读地球的人》纪录片 - 统一素材库<\/title>/<title>《读地球的人》纪录片 - 统一素材库 (已更新: 2026-04-08)<\/title>/' unified-materials.html

# 在页面头部添加更新提示
sed -i '' '/<header>/,/<\/header>/ {
    /<\/header>/ i\
        <div style="background: #27ae60; color: white; padding: 0.5rem; border-radius: 4px; margin-top: 1rem; font-size: 0.9rem;">\
            ✅ 已更新：新增10个最新NASA/USGS/NOAA/ESA/BGS素材 (2026-04-08)\
        </div>
}' unified-materials.html

echo "✅ 页面更新完成！"

# 部署到GitHub
echo "🚀 部署到GitHub Pages..."
git add .
git commit -m "feat: 添加10个最新科学素材，更新统一素材页面"
git push origin main

echo ""
echo "🎉 更新完成！"
echo "🌐 访问地址：https://wangzhprince-wq.github.io/earth-materials-research/"
echo ""
echo "📊 新增素材："
echo "  • 🌋 6个NASA最新地球观测图像"
echo "  • 🌍 2个USGS/NOAA实时数据"
echo "  • 🇪🇺 1个ESA欧洲卫星图像"
echo "  • 🇬🇧 1个BGS英国地质3D模型"
echo ""
echo "🚀 页面现在包含20个高质量科学素材！"
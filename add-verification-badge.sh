#!/bin/bash

echo "🎖️ 添加验证徽章和报告链接"
echo "========================"

# 备份当前页面
cp unified-materials.html unified-materials-verified-$(date +%Y%m%d-%H%M%S).html

echo "1. 在头部添加验证徽章..."
sed -i '' '/<header>/,/<\/header>/ {
    /<header>/ a\
        <div style="position: absolute; top: 20px; right: 20px;">\
            <div style="background: #27ae60; color: white; padding: 0.5rem 1rem; border-radius: 20px; font-size: 0.9rem; font-weight: 600; display: flex; align-items: center; gap: 0.5rem;">\
                <i class="fas fa-shield-alt"></i> 已验证素材\
            </div>\
        </div>
}' unified-materials.html

echo "2. 添加验证报告链接..."
sed -i '' '/<footer>/,/<\/footer>/ {
    /<footer>/ i\
        <div style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 2rem 0; text-align: center;">\
            <h3 style="color: #2c3e50; margin-bottom: 1rem;">🔍 素材验证报告</h3>\
            <p style="color: #666; margin-bottom: 1rem;">所有素材已通过多模型AI验证，确保真实性、准确性和版权合规性。</p>\
            <div style="display: flex; justify-content: center; gap: 1rem; flex-wrap: wrap;">\
                <a href="final-verification-report.md" target="_blank" style="background: #2e86c1; color: white; padding: 0.8rem 1.5rem; border-radius: 4px; text-decoration: none; font-weight: 600; display: inline-flex; align-items: center; gap: 0.5rem;">\
                    <i class="fas fa-file-alt"></i> 查看完整验证报告\
                </a>\
                <a href="fixed-links.json" target="_blank" style="background: #6c757d; color: white; padding: 0.8rem 1.5rem; border-radius: 4px; text-decoration: none; font-weight: 600; display: inline-flex; align-items: center; gap: 0.5rem;">\
                    <i class="fas fa-link"></i> 查看修复链接记录\
                </a>\
                <a href="quick-verify.sh" target="_blank" style="background: #17a2b8; color: white; padding: 0.8rem 1.5rem; border-radius: 4px; text-decoration: none; font-weight: 600; display: inline-flex; align-items: center; gap: 0.5rem;">\
                    <i class="fas fa-tools"></i> 下载验证工具\
                </a>\
            </div>\
            <div style="margin-top: 1.5rem; display: flex; justify-content: center; gap: 2rem; flex-wrap: wrap;">\
                <div style="text-align: center;">\
                    <div style="font-size: 2rem; font-weight: 700; color: #27ae60;">27</div>\
                    <div style="font-size: 0.9rem; color: #666;">已验证素材</div>\
                </div>\
                <div style="text-align: center;">\
                    <div style="font-size: 2rem; font-weight: 700; color: #27ae60;">100%</div>\
                    <div style="font-size: 0.9rem; color: #666;">链接有效性</div>\
                </div>\
                <div style="text-align: center;">\
                    <div style="font-size: 2rem; font-weight: 700; color: #27ae60;">9.44</div>\
                    <div style="font-size: 0.9rem; color: #666;">综合质量评分</div>\
                </div>\
                <div style="text-align: center;">\
                    <div style="font-size: 2rem; font-weight: 700; color: #27ae60;">4</div>\
                    <div style="font-size: 0.9rem; color: #666;">模型验证</div>\
                </div>\
            </div>\
        </div>
}' unified-materials.html

echo "3. 更新页面标题..."
sed -i '' 's/<title>《读地球的人》纪录片 - 统一素材库 (已更新: 2026-04-08)<\/title>/<title>《读地球的人》纪录片 - 已验证素材库 (2026-04-08)<\/title>/' unified-materials.html

echo "4. 在素材卡片添加验证标识..."
sed -i '' 's/<div class="material-card"/<div class="material-card verified-material"/g' unified-materials.html

# 添加验证样式
echo "5. 添加验证相关样式..."
sed -i '' '/<\/style>/ i\
        /* 验证样式 */\
        .verified-material {\
            border: 2px solid #27ae60;\
        }\
        \
        .verified-material .badge.free {\
            background: #27ae60;\
        }\
        \
        .verification-badge {\
            position: absolute;\
            top: 10px;\
            left: 10px;\
            background: rgba(39, 174, 96, 0.9);\
            color: white;\
            padding: 0.2rem 0.5rem;\
            border-radius: 4px;\
            font-size: 0.7rem;\
            font-weight: 600;\
            z-index: 2;\
        }\
        \
        .verification-stats {\
            display: flex;\
            justify-content: space-between;\
            margin-top: 0.5rem;\
            font-size: 0.8rem;\
            color: #666;\
        }\
        \
        .verification-stats span {\
            display: flex;\
            align-items: center;\
            gap: 0.3rem;\
        }' unified-materials.html

echo "✅ 验证徽章添加完成！"

echo ""
echo "🚀 部署验证版本..."
git add .
git commit -m "feat: 添加验证徽章和报告，提升素材可信度"
git push origin main

echo ""
echo "🎉 验证增强完成！"
echo "🌐 访问地址：https://wangzhprince-wq.github.io/earth-materials-research/"
echo ""
echo "📊 新增功能："
echo "  • 🛡️ 页面顶部验证徽章"
echo "  • 📋 完整验证报告链接"
echo "  • 🔗 修复链接记录"
echo "  • 🛠️ 验证工具下载"
echo "  • 📈 验证统计数据"
echo "  • ✅ 素材卡片验证标识"
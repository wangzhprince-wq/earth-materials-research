#!/bin/bash

echo "🔍 快速链接验证脚本"
echo "=================="
echo ""

# 验证NASA链接
echo "1. NASA链接验证:"
echo "----------------"
curl -s -o /dev/null -w "APOD页面: %{http_code}\n" https://apod.nasa.gov/apod/ap260408.html
curl -s -o /dev/null -w "APOD图片: %{http_code}\n" https://apod.nasa.gov/apod/image/2604/earthset_700.jpg
curl -s -o /dev/null -w "气候页面: %{http_code}\n" https://science.nasa.gov/climate-change/
curl -s -o /dev/null -w "可视化站: %{http_code}\n" https://svs.gsfc.nasa.gov/
echo ""

# 验证ESA链接
echo "2. ESA链接验证:"
echo "----------------"
curl -s -o /dev/null -w "多媒体库: %{http_code}\n" https://www.esa.int/ESA_Multimedia
echo ""

# 验证BGS链接
echo "3. BGS链接验证:"
echo "----------------"
curl -s -o /dev/null -w "主站: %{http_code}\n" https://www.bgs.ac.uk
echo ""

# 验证NOAA链接
echo "4. NOAA链接验证:"
echo "----------------"
curl -s -o /dev/null -w "媒体页: %{http_code}\n" https://www.noaa.gov/media
echo ""

# 验证USGS链接
echo "5. USGS链接验证:"
echo "----------------"
curl -s -o /dev/null -w "地震图: %{http_code}\n" https://earthquake.usgs.gov/earthquakes/map/
echo ""

echo "📊 验证结果汇总:"
echo "--------------"
echo "✅ 200: 链接正常"
echo "⚠️  301/302: 重定向（需要更新链接）"
echo "❌ 404/000: 链接失效"
echo ""
echo "💡 建议:"
echo "1. 更新重定向链接"
echo "2. 替换失效链接"
echo "3. 添加备用链接"
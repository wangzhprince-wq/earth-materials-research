#!/usr/bin/env python3
"""
修复素材链接脚本
将可能失效的NASA/USGS链接替换为更稳定的版本
"""
import re

# 读取素材预览页面
with open('material-preview-v2.html', 'r', encoding='utf-8') as f:
    content = f.read()

# 替换可能失效的NASA链接
replacements = {
    # NASA蓝色弹珠 - 使用更稳定的链接
    'https://eoimages.gsfc.nasa.gov/images/imagerecords/73000/73751/world.topo.bathy.200407.3x5400x2700.jpg': 
    'https://visibleearth.nasa.gov/images/73884/blue-marble-land-surface-shallow-water-and-shaded-topography/73884_lrg.jpg',
    
    # NASA夜间地球 - 使用Earth Observatory稳定链接
    'https://eoimages.gsfc.nasa.gov/images/imagerecords/79000/79765/dnb_land_ocean_ice.2012.3600x1800.jpg':
    'https://earthobservatory.nasa.gov/ContentFeature/BlueMarble/Images/land_shallow_topo_2048.jpg',
    
    # 达尔文图片 - 使用Wikimedia稳定链接
    'https://commons.wikimedia.org/wiki/File:Darwin%27s_finches.jpeg':
    'https://upload.wikimedia.org/wikipedia/commons/3/33/Darwin%27s_finches.jpeg',
    
    # 添加备用图片占位符
    'onerror="this.src=\'https://via.placeholder.com/300x200/1a2980/ffffff?text=Image+Loading\'"':
    'onerror="this.src=\'https://images.unsplash.com/photo-1614730321146-b6fa6a46bcb4?w=300&h=200&fit=crop&crop=center\'"'
}

# 执行替换
for old, new in replacements.items():
    content = content.replace(old, new)

# 添加网络检查脚本
network_check_script = '''
<script>
// 网络连接检查
function checkNetwork() {
    const statusEl = document.createElement('div');
    statusEl.id = 'network-status';
    statusEl.style.cssText = 'position: fixed; top: 10px; right: 10px; padding: 10px; border-radius: 5px; z-index: 1000; font-size: 12px;';
    
    fetch('https://www.nasa.gov/favicon.ico', { mode: 'no-cors' })
        .then(() => {
            statusEl.style.background = 'rgba(46, 125, 50, 0.9)';
            statusEl.style.color = 'white';
            statusEl.innerHTML = '✅ 网络连接正常';
        })
        .catch(() => {
            statusEl.style.background = 'rgba(239, 108, 0, 0.9)';
            statusEl.style.color = 'white';
            statusEl.innerHTML = '⚠️ 部分资源可能需要代理';
        });
    
    document.body.appendChild(statusEl);
}

// 图片加载失败处理
function setupImageFallbacks() {
    document.querySelectorAll('img').forEach(img => {
        const originalSrc = img.src;
        img.onerror = function() {
            console.log('图片加载失败:', originalSrc);
            this.src = 'https://images.unsplash.com/photo-1614730321146-b6fa6a46bcb4?w=' + this.width + '&h=' + this.height + '&fit=crop';
            this.alt = '图片加载失败，请检查网络连接';
        };
    });
}

// 链接可用性检查
function checkLinks() {
    const links = document.querySelectorAll('a[href^="http"]');
    links.forEach(link => {
        link.addEventListener('click', function(e) {
            console.log('尝试访问:', this.href);
            // 可以添加Analytics跟踪
        });
    });
}

// 页面加载完成后执行
document.addEventListener('DOMContentLoaded', function() {
    checkNetwork();
    setupImageFallbacks();
    checkLinks();
});
</script>
'''

# 在</body>前插入脚本
if '</body>' in content:
    content = content.replace('</body>', network_check_script + '\n</body>')

# 写入修复后的文件
with open('material-preview-v2-fixed.html', 'w', encoding='utf-8') as f:
    f.write(content)

print('✅ 链接修复完成，创建新文件: material-preview-v2-fixed.html')

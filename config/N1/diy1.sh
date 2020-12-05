#!/bin/bash

# 写入emmc
git clone https://github.com/tuanqing/install-program package/install-program
# 主题
svn co https://github.com/rosywrt/luci-theme-rosy/trunk/luci-theme-rosy package/luci-theme-rosy

# passwall
git clone https://github.com/xiaorouji/openwrt-passwall.git package/lean/luci-app-passwall
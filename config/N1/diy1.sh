#!/bin/bash

# 写入emmc
git clone https://github.com/tuanqing/install-program package/install-program
# 主题
svn co https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom/trunk/luci-theme-infinityfreedom package/luci-theme-infinityfreedom

# passwall
git clone https://github.com/ylqjgm/openwrt-passwall.git package/lean/luci-app-passwall

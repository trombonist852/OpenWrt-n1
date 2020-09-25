# 自动构建斐讯 K2P/N1 OpenWrt 固件脚本
# Automatically Build OpenWrt Firmware for PHICOMM K2P/N1

**每周六早上六点自动通过 Github Actions 进行云编译，并发布为当日日期版本**

## 使用方法

1. 将本项目 **Fork** 到自己帐号
2. 修改 **config** 目录下的配置信息
3. 提交更新将触发固件编译

## 手动触发

1. 在 **config** 下创建架构目录，如 `N1`
2. 目录中至少包含 `.config`、`settings.ini` 两个文件，分别代表 **OpenWrt** 配置信息及编译配置信息
3. 若需要更多自定义，请自行增加 `diy`、`files`、`patches` 目录及 `diy1.sh`、`diy2.sh`、`organizer.sh` 三个文件
4. 在 **Actions** 中找到 **手动触发OpenWrt固件云编译** 这个项目，并点击右边的 **Run workflow**，在弹出的窗口内输入自己在 `config` 目录下创建的架构目录名称，必须区分大小写，随后点击绿色按钮即可

### K2P配置

1. 登录地址：`192.168.1.2`
2. 登录帐号：`root`
3. 登录密码：`password`

### N1配置

1. 登录地址：`192.168.1.3`
2. 登录帐号：`root`
3. 登录密码：`password`

## N1写入emmc说明

1. N1做好前期准备工作并配置U盘启动
2. 将N1编译后的`.img`文件写入U盘制作启动盘
3. N1断电并在靠近高清线的接口插入U盘后接通电源
4. 使用网线或各种方法将PC与N1连接
5. 使用SSH登录N1，并执行：`n1-install`
6. 写入完成后重启并拔出U盘

## 包含插件

### K2P插件

1. arpbind
2. autoreboot
3. ddns
4. flowoffload
5. mtwifi
6. ramfree
7. upnp

### N1插件

1. adbyby-plus
2. aria2
3. autoreboot
3. baidupcs-web
4. cifs-mount
5. cifsd
6. docker
7. filebrowser
8. filetransfer
8. flowoffload
9. netdata
10. nfs
11. passwall
12. sfe
13. ssr-plus
14. unblockmusic
15. upnp
16. vlmcsd
17. vsftpd
18. zerotier

## 特别说明

1. 源码使用 [https://github.com/coolsnowwolf/lede.git](https://github.com/coolsnowwolf/lede.git)
2. 插件使用 [https://github.com/xiaorouji/openwrt-package.git](https://github.com/xiaorouji/openwrt-package.git)
3. N1打包使用 [https://github.com/tuanqing/mknop.git](https://github.com/tuanqing/mknop.git)
4. emmc写入使用 [https://github.com/tuanqing/install-program.git](https://github.com/tuanqing/install-program.git)
#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#


#nas-xunlei
svn co https://github.com/gngpp/nas-xunlei/trunk/openwrt package/xunlei

#alist
git clone https://github.com/sbwml/luci-app-alist package/alist



# 为alist插件更换最新的golang版本
rm -rf feeds/packages/lang/golang

svn export https://github.com/sbwml/packages_lang_golang/branches/19.x feeds/packages/lang/golang

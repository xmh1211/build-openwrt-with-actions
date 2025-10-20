# 请在下方输入自定义命令(一般用来安装第三方插件)(可以留空)
sed -i "s/$192.168.1.1/$192.168.100.1/g" package/base-files/files/bin/config_generate
sed -i "s/$hostname='ImmortalWrt'/$hostname='X-WRT'/g" package/base-files/files/bin/config_generate
sed -i "s/$timezone='UTC'/$timezone='CST-8'/g" package/base-files/files/bin/config_generate
sed -i '/CST-8/a \\t\tset system.@system[-1].zonename='Asia/Shanghai'' package/base-files/files/bin/config_generate
cat > feeds.conf.default <<'EOF'
src-git packages https://github.com/immortalwrt/packages.git^9bff73b6942b00e3f6b42e9261c9db7bdfcd08a2
src-git luci https://github.com/immortalwrt/luci.git^5ff7e613f8ac26c177712ab6df98701d160a29d4
src-git routing https://github.com/openwrt/routing.git^885ae6f9d0c0f47a1a6321e1cc7e9c7e20cc2681
src-git telephony https://github.com/openwrt/telephony.git^2a4541d46199ac96fac214d02c908402831c4dc6
src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git;main
EOF

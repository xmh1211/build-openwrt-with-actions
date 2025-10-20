# 请在下方输入自定义命令(一般用来安装第三方插件)(可以留空)
sed -i "s/$192.168.1.1/$192.168.100.1/g" package/base-files/files/bin/config_generate

sed -i "s/$hostname='ImmortalWrt'/$hostname='X-WRT'/g" package/base-files/files/bin/config_generate

sed -i "s/$timezone='UTC'/$timezone='CST-8'/g" package/base-files/files/bin/config_generate

sed -i '/CST-8/a \\t\tset system.@system[-1].zonename='Asia/Shanghai'' package/base-files/files/bin/config_generate

echo "src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git;main" >> "feeds.conf.default"

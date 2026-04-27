#!/bin/bash
echo "===== 自定义设置 ====="
sed -i "s/option ipaddr '192.168.1.1'/option ipaddr '192.168.123.1'/g" /etc/config/network
/etc/init.d/network reload
uci set wireless.default_radio0.ssid='PDCN'
uci set wireless.default_radio0.encryption='psk2'
uci set wireless.default_radio0.key='1234567890'
uci set wireless.radio0.disabled='0'
uci set wireless.default_radio1.ssid='PDCN-5G'
uci set wireless.default_radio1.encryption='psk2'
uci set wireless.default_radio1.key='1234567890'
uci set wireless.radio1.disabled='0'
uci commit wireless
wifi reload
echo "===== 设置完成 ====="

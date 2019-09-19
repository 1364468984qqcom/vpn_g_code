#!/bin/sh

user="你的vpn账号"
token="你的谷歌验证token 16位字符串,jumpserver个人信息重置MFA可查看"
jump_server="jump.dmall.com"

SH_HOME=$(cd "$(dirname $0)";pwd)
code=$(python3 ${SH_HOME}/g_code3.py ${token})
expect ${SH_HOME}/vpn_expect ${code} ${user} ${jump_server}
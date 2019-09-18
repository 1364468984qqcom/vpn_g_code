#!/bin/sh

user="你的vpn账号"
token="你的谷歌验证token 16位字符串,jumpserver个人信息重置MFA可查看"

SH_HOME=$(pwd)
code=$(python $SH_HOME/g_code3.py $token)
expect $SH_HOME/vpn_dmall_expect $code $user
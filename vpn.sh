#!/bin/sh

user="zhun.yang"
token="52ZWK75AAF5N3THW"
jump_server="jump.dmall.com"

SH_HOME=$(cd "$(dirname $0)";pwd)
code=$(python3 ${SH_HOME}/g_code3.py ${token})
expect ${SH_HOME}/vpn_expect ${code} ${user} ${jump_server}
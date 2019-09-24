#!/bin/sh

user="zhun.yang"
token="52ZWK75AAF5N3THW"
jump_server="jump.dmall.com"
SH_HOME=$(cd "$(dirname $0)";pwd)

for (( i = 0; i < 10; ++i )); do
    expect ${SH_HOME}/vpn_expect ${SH_HOME} ${token} ${user} ${jump_server}
    if [[ $? = 0 ]]; then
        exit
    fi
    sleep 1s
done


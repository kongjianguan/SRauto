#!/bin/bash
allpw=("278 1600" "534 1639" "819 1644" "278 1811" "539 1811" "819 1811" "246 1987" "539 1987" "819 1987" "527 2137")
echo 此脚本用于帮助你方便地配置模块
user_pw=(0)
echo "现在，输入你的锁屏密码(仅限数字密码)"
echo "(lm键调用键盘)"
read -a user_pw
i=0
while [[i<=${#user_pw[*]}]]
do
    user_pw[i]="input swipe "$allpw[$user_pw[i]]" "$allpw[$user_pw[i]]" 250\n"
    ((i++))
done
echo ${#user_pw[*]}>./i_pw.txt
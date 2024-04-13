#!/system/bin/bash
allpw=("527 2137" "278 1600" "534 1639" "819 1644" "278 1811" "539 1811" "819 1811" "246 1987" "539 1987" "819 1987" )
echo "此脚本用于帮助你方便地配置模块"
user_pw=(0)
opt=0
run_date=0
    echo "现在，输入你的锁屏密码(仅限数字密码)"
    echo "(lm键调用键盘)"
    read -a user_pw
    echo ${user_pw[*]}
    s=0
    i=0
    file=/data/i_pw.sh
    chmod 777 $file
    rm -f $file
    echo ${#user_pw[*]}
    for s in $(seq 1 ${#user_pw[*]})
    do
        temp=${allpw[$((user_pw[$i]-48))]}
        echo 'input swipe '$temp' '$temp" 250">>$file
        ((i++))
    done
    chmod 777 $file
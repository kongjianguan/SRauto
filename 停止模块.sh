#!/bin/bash

# 检查当前用户是否为root用户
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# 指定文件路径
file="state.txt"

# 逐行读取文件
while IFS= read -r line
do
    # 提取名称和PID
    name=${line%%+*}
    pid=${line#*+}

    # 杀死进程
    kill -9 $pid

    # 检查杀死进程的结果
    if [[ $? -eq 0 ]]; then
        echo "Killed process $name with PID: $pid"
    else
        echo "Failed to kill process $name with PID: $pid"
    fi
done < "$file"
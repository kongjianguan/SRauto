# 星穹铁道自动任务

本模块运行流程如下
crond进程每到上午10点(默认)就执行unlock.sh

unlock唤醒屏幕，按照给定的坐标输入密码解锁  

unlock打开游戏，开始游戏内流程  

结束后退出游戏，杀死游戏进程，并锁屏

游戏内流程
    清空体力-领取委托-领取无名勋礼

## 必做
脚本刷入后需要做什么 

1.运行auto.sh补全解锁的坐标(目前只适用于数字密码解锁)。具体参考在下面 

## 解锁的坐标
数字 坐标
1 278 1600  

2 534 1639  

3 819 1644  

4 278 1811  

5 539 1811  

6 819 1811  

7 246 1987  

8 539 1987  

9 819 1987  

0 527 2137  

(上述来自RedmiNote11TPro+)


## 注意！！！！！
本脚本只适用于2460x1080分辨率的机型  

本脚本默认你是没有开启自动战斗的，开了的请关掉，或者自己改一下脚本  

模块目录内有部分文件是未完成的功能，可以尝试补全，或者等待后续的更新  



## 出现了脚本点错了或其他bug怎么办？
脚本使用自动点击来实现功能，这就意味着运行期间不可以操作手机，并且出了bug后，为了安全起见，只能锁屏并等待3分钟后脚本运行完毕

## 各文件路径
service.sh                      模块的程序入口  

unlock.sh                       解锁并打开应用  

game.sh                       主要是游戏内操作  

order.sh                         用于委托相关  

/sdcard/Android/SRauto/SRauto.txt   日志路径  

/auto.sh                     自动配置锁屏密码 

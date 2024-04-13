#此时已进入游戏
input tap 2067 72
#Entered Index.
sleep 2s
#Click 3rd button.
input tap 950 132
sleep 1s
#choose next 2nd Index.
input tap 644 441
sleep 1s
#focus on Role-exp expriment.
input tap 1875 354
sleep 5s
#开始6次点击并挑战
input tap 2359 882
input tap 2359 882
input tap 2359 882
input tap 2359 882
input tap 2359 882
input tap 2359 882
input tap 2062 981
sleep 2s
input tap 2162 986
sleep 5s
#开启自动战斗
input tap 2250 62
#下面是预设的战斗时间
sleep 180s
#此时挑战完成，点击退出挑战
input tap 544 916
sleep 5s
#再次进入菜单
input tap 2067 72
#Entered Index.
sleep 2s
#Click 3rd button.
input tap 950 132
sleep 1s
#choose next 2nd Index.
input tap 644 441
sleep 1s
#focus on Remains-exp expriment.
input tap 1865 566
sleep 5s
#开始6次点击并挑战
input tap 2359 882
input tap 2359 882
input tap 2359 882
input tap 2359 882
input tap 2359 882
input tap 2359 882
input tap 2062 981
sleep 2s
input tap 2162 986
sleep 5s
input tap 2250 62
sleep 100s
#上面和下面的都是战斗时间
input tap 0 0
sleep 100s
#此时挑战完成，点击退出挑战
input tap 544 916
#此时已完成光锥经验书的挑战
sleep 5s
input tap 2067 72
#Entered Index.
sleep 2s
#Click 3rd button.
input tap 950 132
sleep 1s
#choose next 2nd Index.
input tap 644 441
sleep 1s
#focus on Role-exp expriment.
input tap 1875 354
sleep 5s
#开始6次点击并挑战
input tap 2359 882
input tap 2359 882
input tap 2359 882
input tap 2359 882
input tap 2359 882
input tap 2359 882
input tap 2062 981
sleep 2s
input tap 2162 986
sleep 5s
input tap 2250 62
#依然是战斗时间
sleep 180s
#此时挑战完成，点击退出挑战
input tap 544 916
sleep 5s
#所有体力已清空
chmod 777 ./order.sh
#打开委托界面
sh ./order.sh
#点击奖励菜单栏
input tap 1895 786
sleep 1s
#进入任务界面
input tap 91 289
sleep 1s
#一键完成
input tap 2119 1007
sleep 3s
#返回奖励界面
input tap 91 182
sleep 1s
#一键领取
input tap 1867 1011
sleep 3s
#返回游戏
input tap 2385 54
sleep 1s
input keyevent 3
killall com.miHoYo.hkrpg
input keyevent 26
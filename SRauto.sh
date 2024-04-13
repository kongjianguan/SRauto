function unlock(){
    sleep 3s
    input keyevent 26
    input swipe 527 2137 534 1639 250
    input swipe 527 2137 534 1639 250
    sleep 1s
    input swipe 819 1644 819 1644 250
    input swipe 534 1639 534 1639 250
    input swipe 527 2137 527 2137 250
    input swipe 539 1811 539 1811 250
    input swipe 527 2137 527 2137 250
    input swipe 527 2137 527 2137 250
    input swipe 278 1600 278 1600 250
    sleep 2s
    am start -n com.miHoYo.hkrpg/com.mihoyo.combosdk.ComboSDKActivity
    #结束加载
    #必须考虑应对游戏更新的情况
    sleep 40s
    input tap 1275 765
    sleep 30s
    #游戏加载完成
    game
}
function game(){
    #此时已进入游戏
    input tap 2067 72
    #进入菜单
    sleep 2s
    #点击第三个选项
    input tap 950 132
    sleep 1s
    #选择第二个菜单
    input tap 644 441
    sleep 1s
    #角色经验书挑战
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
    sleep 100s
    #此时挑战完成，点击退出挑战
    input tap 544 916
    sleep 5s
    #再次进入菜单
    input tap 2067 72
    #进入菜单
    sleep 2s
    #点击第三个选项
    input tap 950 132
    sleep 1s
    #选择第二个菜单
    input tap 644 441
    sleep 1s
    #角色经验书挑战
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
    #进入菜单
    sleep 2s
    #点击第三个选项
    input tap 950 132
    sleep 1s
    #选择第二个菜单
    input tap 644 441
    sleep 1s
    #角色经验书挑战
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
    sleep 100s
    #此时挑战完成，点击退出挑战
    input tap 544 916
    sleep 5s
    #所有体力已清空
    #打开委托界面
    entrust
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
    
}
function entrust(){
    input tap 54 84
    sleep 1s
    #点击左上菜单栏
    input tap 2217 450
    sleep 1s
    #已进入委托界面
    #进入经验材料菜单
    input tap 912 173
    sleep 1s
    #点击第一项
    input tap 746 300
    sleep 1s
    #领取
    input tap 1879 992
    sleep 5s
    #再次派遣
    input tap 1523 921
    sleep 5s
    #切换到第二项
    input tap 748 405
    sleep 1s
    input tap 748 405
    sleep 1s
    #领取
    input tap 1879 992
    sleep 5s
    #再次派遣
    input tap 1523 921
    sleep 5s
    #切换到合成材料
    input tap 1259 170
    sleep 1s
    input tap 1259 170
    sleep 1s
    #领取
    input tap 1879 992
    sleep 5s
    #再次派遣
    input tap 1523 921
    sleep 5s
    #切换到专属材料
    input tap 581 178
    sleep 1s
    input tap 581 178
    sleep 1s
    #领取
    input tap 1879 992
    sleep 5s
    #再次派遣
    input tap 1523 921
    sleep 5s
    #退出委托
    input tap 2369 71
    input tap 2369 71
    sleep 1s
}
sed "/SRauto.sh/d" ./state.txt
echo "SRauto.sh "$$>>./state.txt
if ( $1==-r );then
do 
unlock
done
exit 0
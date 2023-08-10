sleep 3s
input keyevent 26
input swipe 527 2137 534 1639 250
input swipe 527 2137 534 1639 250
sleep 1s
#开始解锁
sh /data/i_pw.sh
sleep 2s
am start -n com.miHoYo.hkrpg/com.mihoyo.combosdk.ComboSDKActivity
#Enter and Loading
#必须考虑应对游戏更新的情况
sleep 40s
input tap 1275 765
sleep 30s
#Loading end.Touch start.
chmod 777 ./game.sh
sh ./game.sh
echo date "完成一次">>/sdcard/Android/SRauto/SRauto.log
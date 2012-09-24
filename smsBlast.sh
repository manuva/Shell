#! /bin/bash
# Blasts a given input message to a provided number with Android OS 2.1+ #

#Welcome message
echo "Hello $USER, how are you doing today?"

#change to android folder for adb
cd androidSDK/platform-tools

#Input number and message
num=$(zenity --entry --text="Enter mobile number" --title="Send SMS" --entry-text="+3105558221")
mess=$(zenity --entry --text="Enter message" --title="Send SMS" --width=400 --entry-text="lolmessage")

#Spams message five times
#for i in 1 2 3 4 5

adb shell input keyevent 82
sleep 1
#Infinite while loop
while :
do
adb shell am start -a android.intent.action.SENDTO -d sms:$num --es sms_body "$mess" --ez exit_on_sent true
sleep 1
adb shell input keyevent 22
adb shell input keyevent 66
#adb shell input keyevent 4
sleep 1
#adb shell input keyevent 3

done

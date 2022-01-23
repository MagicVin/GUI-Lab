#!/bin/bash
# 
# ETA (Easy To Access) by v.xin.zhang@outlook.com
# Jan 23, 2022
# 

Screen_TuneLlight() {
  EXEC=brightnessctl 
  DEVICE=intel_backlight # set monitor id for tuning 
  DEGREE=5%
  case $1 in 
    "light") sudo $EXEC -d $DEVICE set +$DEGREE > /dev/null 2>&1        ;;
    "dim") sudo $EXEC -d $DEVICE set $DEGREE- > /dev/null 2>&1          ;;
  esac
}

Screen_Capture() {
  IMAGES_DIR=${HOME}/ScreenCaptures
  EXEC=/usr/bin/import

  mkdir -p $IMAGES_DIR || exit -1
  case $1 in
    "full") $EXEC -window root ${IMAGES_DIR}/`date +"%m%d-%H%M%S"`.png  ;;
    "part") $EXEC ${IMAGES_DIR}/`date +"%m%d-%H%M%S"`.png               ;;
  esac
}

WIFI_Press() {
  WLAN=wlan0
  WLAN_CONF=/etc/wpa_supplicant/wpa_supplicant.conf
  Status=`ip addr show $WLAN | sed -n 's/^.*state \(.*\) qlen.*$/\1/p'`
  case $Status in
    "UP") #  the connection is up, so down the connection
      ps aux | grep $WLAN | awk '{print $1}' | xargs sudo kill -9 > /dev/null 2>&1
      sleep 1
      sudo ip link set dev $WLAN down
      sleep 1
      sudo ip addr flush $WLAN 
    ;;
    "DOWN") # not UP then up the connection
      ps aux | grep $WLAN | awk '{print $1}' | xargs sudo kill -9 > /dev/null 2>&1
      sleep 1
      sudo ip link set dev $WLAN up 
      sleep 1
      sudo wpa_supplicant -i $WLAN -c $WLAN_CONF & > /dev/null 2>&1
      sudo udhcpc -i $WLAN > /dev/null 2>&1
    ;;
  esac
}

HelpMsg() {
  msg=(
    'usage: $0 [Function] [Agrs0] [Agrs1] [Agrs ...]                    ;'
    '                                                                   ;'
    ' Functions:                                                        ;'
    ' Screen_TuneLight [+Agrs]                                          ;'
    '                  |_"light" -- bright screen                       ;'
    '                  |_"dim"   -- dim screen                          ;'
    '                                                                   ;'
    ' Screen_Capture   [+Agrs]                                          ;'
    '                  |_"full"  -- fullscreen                          ;'
    '                  |_"part"  -- partscreen                          ;'
    ' WIFI_Press                                                        ;'

  )

  echo "${msg[@]}" | sed 's/;/\n/g'

}

ETA_Main() {
  case $1 in 
    "Screen_TuneLight") shift; Screen_TuneLlight $1                     ;;
      "Screen_Capture") shift; Screen_Capture    $1                     ;;
          "WIFI_Press") shift; WIFI_Press                               ;;
                     *) HelpMsg                                         ;;
  esac
}

ETA_Main $@




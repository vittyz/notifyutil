#!/bin/bash

#echo off

#Define bearer for notify
export alert=iZZ4LonZTgiEtHpPON2BaUtIch7svdKlmygoetIz3nW
export sos=PiaS6DPVBtYxS03bl3P3l8UPSpJSpswa4k3m7NgzW12



export message="$1"
export mode="$2"

export bearer=UKhtBSPHMuazRlVgYCGgHdlOTKUCkz5g6aIwYKsE2iL





if [ $# = "1" ]
then

  echo "Normal Mode"
  curl -X POST -H "Content-Type: application/x-www-form-urlencoded" -H "Authorization: Bearer $bearer"  -d "message=$1" https://notify-api.line.me/api/notify


elif  [ $# = "2" ]
then
  if [ $mode = "alert" ]
  then
        #echo "alert"
     bearer=$sos

     curl -X POST -H "Content-Type: application/x-www-form-urlencoded" -H "Authorization: Bearer $bearer"  -d "message=$1" -d "stickerPackageId=1" -d "stickerId=111" https://notify-api.line.me/api/notify

  fi
fi



#curl -X POST -H "Content-Type: application/x-www-form-urlencoded" -H "Authorization: Bearer $bearer"  -d "message=$1" https://notify-api.line.me/api/notify

#curl -X POST -H "Content-Type: application/x-www-form-urlencoded" -H "Authorization: Bearer $bearer"  -d "message=$1" -d "stickerPackageId=1" -d "stickerId=111" https://notify-api.line.me/api/notify



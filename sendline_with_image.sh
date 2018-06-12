#!/bin/bash

#echo off

#penguin = PoSpTbUWQ2QYOGYyodwp6ZCJNKME0pI2GhD9RGHzwEv
#alert = qgWH0Igvq1VZlnEuihHpObhuIh14cR7JPSNbB44pqkB

export alert=iZZ4LonZTgiEtHpPON2BaUtIch7svdKlmygoetIz3nW
export sos=PiaS6DPVBtYxS03bl3P3l8UPSpJSpswa4k3m7NgzW12



export message="$1"
export mode="$2"

export bearer=UKhtBSPHMuazRlVgYCGgHdlOTKUCkz5g6aIwYKsE2iL


export http_proxy=http://v1a-inf-fwp-01.dev.dtnaws.co.th:8080
export https_proxy=http://v1a-inf-fwp-01.dev.dtnaws.co.th:8080
export no_proxy=localhost,127.0.0.1,10.1.0.0/16,.dev.dtnaws.co.th



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

  if [ $mode = "img" ]
  then
	echo "Normal Mode"
  	echo curl -X POST -H "Content-Type: application/x-www-form-urlencoded" -H "Authorization: Bearer $bearer"  -d "message=result"  -d "imageFile=@"$1  https://notify-api.line.me/api/notify

	

  fi 

fi



#curl -X POST -H "Content-Type: application/x-www-form-urlencoded" -H "Authorization: Bearer $bearer"  -d "message=$1" https://notify-api.line.me/api/notify

#curl -X POST -H "Content-Type: application/x-www-form-urlencoded" -H "Authorization: Bearer $bearer"  -d "message=$1" -d "stickerPackageId=1" -d "stickerId=111" https://notify-api.line.me/api/notify



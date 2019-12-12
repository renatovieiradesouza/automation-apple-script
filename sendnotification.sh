#!/bin/bash
export ipJenkins=$(ping -c 1 jenkins.clarobrasil.mobi)
export ipLiberado=$(echo $ipJenkins | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')
export postDataJson="{\"text\":\"$ipLiberado\"}"
#Integration with Chat Google https://developers.google.com/hangouts/chat/concepts/cards
curl --request POST \
  --url 'SET_URL_WEBHOOK_CHAT' \
  --header 'Content-Type: application/json,charset=UTF-8' \
  --header 'Postman-Token: 0b17ca72-6011-449d-bedb-aa37a4138b94' \
  --header 'cache-control: no-cache' \
  --data $postDataJson

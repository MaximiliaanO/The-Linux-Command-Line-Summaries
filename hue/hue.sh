#!/bin/bash

#Program for controlling my philips hue office lamp

#Load Hue Bridge API keys
source hue.env

retrieve_device_list () {
    curl --header "hue-application-key: ${username}" \
    -k "https://${bridge_ip}/clip/v2/resource/device"
    # Returns a JSON array of objects with all lights connected to the bridge
}

#curl --header "hue-application-key: ${username}" \
#    -k "https://${bridge_ip}/clip/v2/resource/light/${lavalamp}" | jq > lavalamp.json

lavalamp_on () {
    curl \
    --header "hue-application-key: ${username}" \
    -d "{\"on\": {\"on\": true }}" \
    -kX PUT "https://${bridge_ip}/clip/v2/resource/light/${lavalamp}"
}

lavalamp_off () {
    curl \
    --header "hue-application-key: ${username}" \
    -d "{\"on\": {\"on\": false }}" \
    -kX PUT "https://${bridge_ip}/clip/v2/resource/light/${lavalamp}"
}

read var1 var2

echo "$var1"
echo "$var2"

if [[ "$var2" == aan ]]; then
    lavalamp_on
fi
if [[ "$var2" == uit ]]; then
    lavalamp_off
fi
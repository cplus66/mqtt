#!/bin/bash -xe
# Date: May 04, 2021
# Author: cplus.shen@gmail.com
# Description: publish a MQTT retain message.
# HOST, ID and PASS should be declared in ../mqtt.rc

source ../mqtt.rc

MQTT_FLAGS="-r"
MSG="http://172.17.5.195/tftp/NCG/jenkins/vega-3500-card-yocto/48036/74/core-image-vega_r48036.wic"

mosquitto_pub -h $HOST -u $ID -P $PASS \
	$MQTT_FLAGS \
	-t $TOPIC \
	-m $MSG

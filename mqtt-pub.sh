#!/bin/bash -xe
source ../mqtt.rc

mosquitto_pub -t $TOPIC -m "Hello!" -h $HOST -u $ID -P $PASS

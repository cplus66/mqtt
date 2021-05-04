#!/bin/bash -xe

source ../mqtt.rc

mosquitto_sub -t $TOPIC -h $HOST -u $ID -P $PASS

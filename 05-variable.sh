#!/bin/bash

START_TIME=$(date +%s)

echo "script started execution at: "
sleep 10

END_TIME=$(date +%s)

echo "script completed execution at: "

TOTAL_TIME=$(($END_TIME - $START_TIME))

echo "Total time taken:$TOTAL_TIME"
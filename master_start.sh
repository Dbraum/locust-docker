#!/bin/bash

docker run \
  --name locustmaster \
  -v /Users/mac_cn/work/seckill/loadTest/:/home/locust/ \
  -e LOCUST_MODE=master \
  -e TARGET_URL=http://112.74.93.133:3001 \
  -e SCENARIO_FILE=/home/locust/locustfile.py \
  -p 8089:8089 \
  locust_distribute
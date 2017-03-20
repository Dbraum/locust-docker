#!/bin/bash

docker run \
  --name locustslave1 -d \
  --link locustmaster:lm \
  -v /Users/mac_cn/work/seckill/loadTest/:/home/locust/ \
  -e LOCUST_MODE=slave \
  -e TARGET_URL=http://112.74.93.133:3001 \
  -e MASTER_HOST=172.16.1.181 \
  -e SCENARIO_FILE=/home/locust/locustfile.py \
  locust_distribute
# locust-docker
这个项目是将locust跑在docker中，locust的版本是0.8a2，支持通过chart显示RPS。

## 用法

```
# 首先需要构建locust docker基础镜像，需要的操作
cd locust
./start

# 接着，需要构建locust_distribute images
cd ../locust/locust_distribute
./start

# 最后
cd ..
docker-compose up
// docker-compose scale locust-master=1 locust-slave=4
```
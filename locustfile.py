from locust import HttpLocust, TaskSet

def health(l):
    l.client.get("/health")

def doSeckill(l):
    l.client.post(
      "/seckill/accesspoint/api/v1/d0ae5221e487/B879FE39D347EEF50175E57859830208?token=xxx", 
      {"userId":"D2F75146B0C215E3C510B396FD920400s889"}
    )

def profile(l):
    l.client.get("/profile")

class UserBehavior(TaskSet):
    tasks = {health:1}

class WebsiteUser(HttpLocust):
    task_set = UserBehavior
    min_wait=10
    max_wait=500
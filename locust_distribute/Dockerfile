#locust distribute
#标准的centos镜像
FROM locust

ADD run.sh /usr/local/bin/run.sh
RUN chmod 755 /usr/local/bin/run.sh
RUN mkdir /home/locust
WORKDIR /home/locust/
CMD ["/usr/local/bin/run.sh"]

#locust
#标准的centos镜像
FROM centos

# install locust deps
RUN yum install -y gcc
RUN yum install -y epel-release
RUN yum install -y python-pip
RUN yum install -y python-devel.x86_64
RUN yum install -y gcc-c++
RUN yum install -y git
RUN pip install --upgrade pip

# install locust
RUN pip install git+https://github.com/locustio/locust.git@master#egg=locustio
RUN pip install pyzmp

EXPOSE 5557
EXPOSE 5558
EXPOSE 8089

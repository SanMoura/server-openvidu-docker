FROM ubuntu:20.04

RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list && \
    apt-get update --fix-missing && \
    apt-get install -y gnupg2 curl && \
    echo "deb https://openvidu.io/debian stable kms6" | tee /etc/apt/sources.list.d/openvidu.list && \
    curl https://openvidu.io/keys/openvidu_key.gpg | apt-key add - && \
    apt-get update --fix-missing && \
    apt-get install -y openvidu-server-kms

ENV OPENVIDU_SECRET=MY_SECRET
ENV DOMAIN_OR_PUBLIC_IP=openvidu-server.onrender.com

EXPOSE 4443 8888
ENTRYPOINT ["./usr/local/bin/openvidu"]
CMD ["start"]

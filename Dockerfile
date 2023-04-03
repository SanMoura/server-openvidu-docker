FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y gnupg2 && \
    echo "deb https://openvidu.io/debian stable kms6" | tee /etc/apt/sources.list.d/openvidu.list && \
    curl https://openvidu.io/keys/openvidu_key.gpg | apt-key add - && \
    apt-get update && \
    apt-get install -y openvidu-server-kms

EXPOSE 4443

CMD ["openvidu-server"]
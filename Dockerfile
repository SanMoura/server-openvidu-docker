FROM openvidu/openvidu-server-kms:latest

ENV OPENVIDU_SECRET=MY_SECRET
ENV DOMAIN_OR_PUBLIC_IP=openvidu-server.onrender.com

EXPOSE 4443
# 8888 5000 5554 443 3478/udp 3478/tcp 3479/udp 3479/tcp 5349/udp 5349/tcp

ENTRYPOINT ["./usr/bin/kurento-media-server"]
CMD ["--modules-path=/usr/share/kurento/modules/"]

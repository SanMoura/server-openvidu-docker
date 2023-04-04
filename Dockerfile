FROM openvidu/openvidu-server-kms:latest

ENV OPENVIDU_SECRET=YOUR_SECRET
ENV DOMAIN_OR_PUBLIC_IP=YOUR_DOMAIN_OR_IP

EXPOSE 8888 5000 5554 443 3478/udp 3478/tcp 3479/udp 3479/tcp 5349/udp 5349/tcp

ENTRYPOINT ["./usr/bin/kurento-media-server"]
CMD ["--modules-path=/usr/share/kurento/modules/"]

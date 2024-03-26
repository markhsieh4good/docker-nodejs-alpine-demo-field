FROM node:8.17.0-alpine3.11

# 系統軟體
RUN apk update 
RUN apk upgrade
RUN apk add --no-cache bash vim curl wget
RUN apk add --no-cache procps
RUN apk add --no-cache net-tools
RUN apk add --no-cache tzdata git
RUN rm -rf /var/cache/apk/*

# 專案支援
WORKDIR /opt
RUN mkdir /opt/project

## setting network
COPY utility_loopback.sh .
RUN chmod +x ./utility_loopback.sh
RUN ./utility_loopback.sh

COPY utility_namespace_dns.sh .
RUN chmod +x ./utility_namespace_dns.sh
RUN ./utility_namespace_dns.sh

ENV PATH="${PATH}:/usr/local/bin"
RUN ln -s /var/run /run

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]

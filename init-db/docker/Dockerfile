FROM docker-reg.emotibot.com.cn:55688/base/sles12sp3-init-db-base:20180719



RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app

COPY . .


# Entrypoint that reads the shell ENV variables as config flags
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]

FROM docker-reg.emotibot.com.cn:55688/base/sles12sp3-mysql-client:20180416

RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app

RUN zypper -n in --force-resolution \
    redis \
    mongodb-shell \
    && rm -rf /var/lib/apt/lists/*

COPY . .


# Entrypoint that reads the shell ENV variables as config flags
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]

FROM python:3.12-alpine3.19

RUN apk add --no-cache \
    bash=5.2.21-r0 \
    postgresql16-dev=16.1-r0 \
    gcc=13.2.1_git20231014-r0 \
    musl-dev=1.2.4_git20230717-r4\
    && \
    rm -rf /var/cache/apk/*

RUN pip install pgcli==4.0.1

ENTRYPOINT [ "/bin/bash" ]

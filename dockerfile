FROM postgres:16-alpine3.19

RUN apk add --no-cache pgcli=4.0.1-r0 

ENTRYPOINT [ "/bin/sh" ]
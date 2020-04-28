FROM alpine
WORKDIR /app
COPY ./frpc ./
COPY ./run.sh ./
COPY ./frpc_full.ini ./
ENTRYPOINT ["/bin/sh", "run.sh"]
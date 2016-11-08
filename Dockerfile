FROM golang:alpine
RUN apk add --no-cache ca-certificates
RUN git clone https://github.com/3846masa/ngrok
RUN apk add --no-cache --virtual build-deps build-base git
RUN cd ngrok && make release-server && \
    mv ./bin/ngrokd /usr/local/bin/ngrokd
RUN chmod +x /usr/local/bin/ngrokd
ENTRYPOINT ["ngrokd"]

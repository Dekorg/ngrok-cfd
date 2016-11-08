FROM golang:alpine

COPY ca-certificates.crt /etc/ssl/certs/
RUN apk add --no-cache ca-certificates
RUN apk add --no-cache --virtual build-deps build-base git

RUN git clone https://github.com/3846masa/ngrok
RUN cd ngrok && make release-server && \
    mv ./bin/ngrokd /usr/local/bin/ngrokd
RUN chmod +x /usr/local/bin/ngrokd
ENTRYPOINT ["ngrokd"]

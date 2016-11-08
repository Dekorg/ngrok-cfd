FROM debian:jessie

RUN apt-get install -y ca-certificates
COPY ngrokd /ngrokd
RUN chmod +x /ngrokd

ENTRYPOINT ["/ngrokd"]

FROM debian:jessie
RUN apt-get update
RUN apt-get install -y apt-transport-https ca-certificates
COPY ngrokd /ngrokd
RUN chmod +x /ngrokd

ENTRYPOINT ["/ngrokd"]

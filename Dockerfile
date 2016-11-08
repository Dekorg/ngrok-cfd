FROM debian:jessie

COPY ngrokd /ngrokd
RUN chmod +x /ngrokd

ENTRYPOINT ["/ngrokd"]


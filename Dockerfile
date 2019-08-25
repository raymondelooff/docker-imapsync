FROM debian:stretch-slim

LABEL maintainer="raymondelooff"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    libjson-webtoken-perl \
    libauthen-ntlm-perl \
    libcgi-pm-perl \
    libcrypt-openssl-rsa-perl \
    libdata-uniqid-perl \
    libfile-copy-recursive-perl \
    libfile-tail-perl \
    libio-socket-inet6-perl \
    libio-socket-ssl-perl \
    libio-tee-perl \
    libhtml-parser-perl \
    libjson-webtoken-perl \
    libmail-imapclient-perl \
    libparse-recdescent-perl \
    libmodule-scandeps-perl \
    libreadonly-perl \
    libregexp-common-perl \
    libsys-meminfo-perl \
    libterm-readkey-perl \
    libtest-mockobject-perl \
    libtest-pod-perl \
    libunicode-string-perl \
    liburi-perl \
    libwww-perl \
    libtest-nowarnings-perl \
    libtest-deep-perl \
    libtest-warn-perl \
    make \
    cpanminus \
    procps \
    wget \
    && rm -rf /var/lib/apt/lists/*

# imapsync 1.956
RUN mkdir -p /app \
    && wget https://imapsync.lamiral.info/imapsync -O /app/imapsync \
    && chmod +x /app/imapsync

ENTRYPOINT ["/app/imapsync"]

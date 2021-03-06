FROM alpine:3.5

ARG S3FS_VERSION=v1.82

MAINTAINER Lucas Meadows <meadows.lucas@gmail.com>

COPY entrypoint /

RUN apk add --no-cache openssh openssh-sftp-server &&\
	rm -rf /var/cache/apk/* &&\
	touch /var/log/lastlog	&&\
    mkdir -p /keys &&\
	chmod +x /entrypoint

RUN apk --no-cache add fuse alpine-sdk automake autoconf libxml2-dev fuse-dev curl-dev curl git bash &&\
    git clone https://github.com/s3fs-fuse/s3fs-fuse.git /tmp/s3fs &&\
    cd /tmp/s3fs &&\
    git checkout tags/${S3FS_VERSION} &&\
    ./autogen.sh &&\
    ./configure --prefix=/usr &&\
    make &&\
    make install &&\
    rm -rf /tmp/*

VOLUME /etc/ssh
EXPOSE 22

ENTRYPOINT ["/entrypoint"]
CMD ["/usr/sbin/sshd", "-D", "-f", "/etc/ssh/sshd_config"]

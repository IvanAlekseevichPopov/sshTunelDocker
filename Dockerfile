FROM alpine:3.7

MAINTAINER Ivan Popov <ivan.alekseevich.popov@gmail.com>

RUN apk update; \
	apk add openssh; \
	apk add busybox

RUN adduser user -D
USER user

EXPOSE 5555
ENTRYPOINT ["ssh", "-D", "0.0.0.0:5555", "root@ivan-popov.tk", "-N"]
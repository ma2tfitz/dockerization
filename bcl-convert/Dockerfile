FROM centos:7

LABEL maintainer="Matt Fitzgibbon"
LABEL description="CentOS 7 linux/amd64 bcl-convert"

ARG RPM

COPY $RPM bcl-convert.rpm

RUN yum install -y gdb \
    && rpm --install bcl-convert.rpm \
    && rm bcl-convert.rpm

ENTRYPOINT ["bcl-convert"]

CMD ["--version"]

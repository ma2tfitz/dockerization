docker build --platform=linux/amd64 -t centos-test .
#  => => writing image sha256:f323b809e661a9088123aea9b44a92671db313869080a9fb1cf640a30ea04396
docker save f323b809e661 -o centos-test.tar
docker run -it centos-test /bin/bash

singularity build --sandbox centos-test  docker-archive://centos-test.tar
singularity shell centos-test


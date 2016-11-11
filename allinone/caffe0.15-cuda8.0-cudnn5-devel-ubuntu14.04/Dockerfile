FROM 2breakfast/deeplearning:cuda8.0-cudnn5-devel-ubuntu14.04

MAINTAINER Weitao Zhou <wtzhou@dataman-inc.com>

ENV CAFFE_VERSION 0.15
LABEL com.nvidia.caffe.version="0.15"

RUN curl -SL https://github.com/BVLC/caffe/archive/rc3.tar.gz \
    | tar xz -C /root/ \
    && for req in $(cat /root/caffe-rc3/requirements.txt); do pip install $req; done \
    && sed 's#usr/lib/python2.7#usr/local/lib/python2.7#' Makefile.config.example > Makefile.config \
    && make -C /root/caffe-rc3 all && make -C /root/caffe-rc3 pycaffe \
    && make -C /root/caffe-rc3 test && make -C /root/caffe-rc3 runtest

WORKDIR /root/caffe-rc3/build

RUN env |grep -iE "caffe" | sed 's/^/export &/g' > /etc/profile.d/caffe-env.sh

FROM 2breakfast/deeplearning:cuda8.0-cudnn5-devel-ubuntu14.04

MAINTAINER Weitao Zhou <wtzhou@dataman-inc.com>

ENV CAFFE_VERSION 0.15
ENV CAFFE_PATH /root/caffe-rc3
ENV CAFFE_EXE_PATH ${CAFFE_PATH}/build
ENV PYTHONPATH ${CAFFE_PATH}/python:${PYTHONPATH}

LABEL com.nvidia.caffe.version="0.15"

RUN curl -SL https://github.com/BVLC/caffe/archive/rc3.tar.gz \
    | tar xz -C /root/ \
    && pip install --no-use-wheel -r /root/caffe-rc3/python/requirements.txt \
    && sed 's#usr/lib/python2.7#usr/local/lib/python2.7#' /root/caffe-rc3/Makefile.config.example > /root/caffe-rc3/Makefile.config \
    && make -C /root/caffe-rc3 all && make -C /root/caffe-rc3 pycaffe

WORKDIR ${CAFFE_EXE_PATH}

RUN env |grep -iE "caffe" | sed 's/^/export &/g' > /etc/profile.d/caffe-env.sh

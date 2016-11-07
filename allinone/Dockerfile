FROM 2breakfast/caffe-sshd:0.14

MAINTAINER Weitao Zhou <wtzhou@dataman-inc.com>

ADD sources.list.trusty /etc/apt/sources.list
RUN rm -rf /var/lib/apt/lists/* && apt-get update && apt-get install -y gcc python-pip python-dev && \
   apt-get install -y libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler && \
   apt-get install -y --no-install-recommends libboost-all-dev && \
   apt-get install -y libgflags-dev libgoogle-glog-dev liblmdb-dev && \
   apt-get install -y libatlas-base-dev && \
   apt-get install -y vim && \
   pip install theano && \
   pip install jupyter && \
   pip install --upgrade https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow-0.8.0-cp27-none-linux_x86_64.whl

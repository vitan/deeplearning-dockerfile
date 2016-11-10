FROM nvidia/cuda:8.0-cudnn5-devel-ubuntu14.04

MAINTAINER Weitao Zhou <wtzhou@dataman-inc.com>

RUN rm -rf /var/lib/apt/lists/* && apt-get update && apt-get install -y --no-install-recommends openssh-server gcc python-pip python-dev \
   libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler libboost-all-dev \
   libgflags-dev libgoogle-glog-dev liblmdb-dev libatlas-base-dev vim && \
   rm -rf /var/lib/apt/lists/* && \
   pip install theano && \
   pip install jupyter && \
   pip install --upgrade https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow-0.11.0-cp27-none-linux_x86_64.whl

RUN mkdir /var/run/sshd
RUN echo 'root:password' | chpasswd

RUN sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

RUN env |grep -iE "cuda|nvidia|cudnn" | sed 's/^/export &/g' > /etc/profile.d/cuda-env.sh

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]

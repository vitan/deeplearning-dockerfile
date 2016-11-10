# deeplearning-dockerfile

Dockerfile of deep Learning on Nvidia GPU. including CUDA Toolkits, Caffe and jupyter etc

## dir tree

```
├── LICENSE
├── README.md
├── allinone # image 2breakfast/deeplearning:allinone, including caffe, sshd, tensorflow, jupyter, theano
│   ├── caffe0.14-cuda7.5-ubuntu14.04
│   │   └── Dockerfile
│   └── caffe0.15-cuda8.0-cudnn5-devel-ubuntu14.04
│       └── Dockerfile
├── caffe-sshd # image 2breakfast/caffe-sshd:0.14 , including caffe, sshd
│   └── Dockerfile
└── deploy-deeplearning.json # json sample to deploying 2breakfast/deeplearning:allinone against Marathon(on mesos)
```

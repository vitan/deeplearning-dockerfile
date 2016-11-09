# deeplearning-dockerfile

Dockerfile of deep Learning on Nvidia GPU. including CUDA Toolkits, Caffe and jupyter etc

## dir tree

```
├── LICENSE
├── README.md
├── allinone
│   └── Dockerfile  # image 2breakfast/deeplearning:allinone, including caffe, sshd, tensorflow, jupyter, theano
├── caffe-sshd
│   └── Dockerfile # image 2breakfast/caffe-sshd:0.14 , including caffe, sshd
└── deploy-deeplearning.json # json sample to deploying 2breakfast/deeplearning:allinone against Marathon(on mesos)
```

# sandbox for VSCode Remote Containers and shellspec and minio on circleci
[![inokappa](https://circleci.com/gh/inokappa/vscode-remote-container-sandbox.svg?style=svg)](https://circleci.com/gh/inokappa/vscode-remote-container-sandbox)
## About

* VSCode の Remote Containers 機能を触ってみました
* shellspec を色々と弄ってみました
* minio を CircleCI のジョブの中で動かしてみました

## Files

```
$ tree .
.
├── .circleci
│   └── config.yml
├── .devcontainer
│   └── devcontainer.json
├── docker
│   └── Dockerfile
├── docker-compose.yml
├── README.md
├── src
│   └── sample
│       ├── lib
│       │   └── sample.sh
│       ├── .shellspec
│       └── spec
│           ├── sample_spec.sh
│           └── spec_helper.sh
└── .vscode
    └── settings.json
```
# sandbox for VSCode Remote Containers and shellspec and minio on circleci

## About

* VSCode の Remote Containers 機能を触ってみました

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
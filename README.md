![latest 10](https://img.shields.io/badge/latest-10-green.svg?style=flat)
![node 10](https://img.shields.io/badge/node-10-brightgreen.svg) ![License MIT](https://img.shields.io/badge/license-MIT-blue.svg) [![Build Status](https://travis-ci.org/Pipekung/node-oracle.svg?branch=master)](https://travis-ci.org/Pipekung/node-oracle) [![](https://img.shields.io/docker/stars/pipekung/node-oracle.svg)](https://hub.docker.com/r/pipekung/node-oracle 'DockerHub') [![](https://img.shields.io/docker/pulls/pipekung/node-oracle.svg)](https://hub.docker.com/r/pipekung/node-oracle 'DockerHub')

# Supported tags

- 10

# How to use this image

## Using docker run

```console
$ docker run -it --rm -p 9000:9000 -e NODE_ENV=production -v /path/to/your/project:/app -w /app pipekung/node-oracle node app.js
```

## Using docker-compose

``` yml
version: "2"
services:
  app:
    image: pipekung/node-oracle
    working_dir: /app
    environment:
      - NODE_ENV=production
    volumes:
      - /path/to/your/project:/app
    ports:
      - 9000:9000
    command: node app.js
```

Run docker-compose:

```console
$ docker-compose up -d
```

# Reference

- [node official](https://hub.docker.com/_/node)
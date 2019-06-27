# Supported tags

- 10

# How to use this image

## Using docker run

```console
$ docker run -it --rm -p 9000:9000 -e NODE_ENV=production -v ./:/app -w /app pipekung/node-oracle node app.js
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
      - ./:/app
    ports:
      - 9000:9000
    command: node app.js
```

Run docker-compose:

```console
$ docker-compose up -d
```

# Reference

# License
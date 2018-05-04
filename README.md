Dockerized Dante socks5 proxy for telegram.
==========================================================

Features
--------
* User management scripts
* Only telegram usage restrictions

Usage with docker-compose
-----------------

```yml
version: '3.6'

services:
  telegram-proxy:
    build: https://github.com/amokrushin/telegram-proxy.git
    ports:
      - 1080:1080
    volumes:
      - ./data/telegram-proxy:/etc
    environment:
      - HOST=example.com
      - PORT=1080
    logging:
      driver: none
    restart: unless-stopped
```


Manage users
---------------------------

```console
dc run --rm docker-io-proxy /scripts/add user password
dc run --rm docker-io-proxy /scripts/chp user password
dc run --rm docker-io-proxy /scripts/list
dc run --rm docker-io-proxy /scripts/del user
```

> Note: `dc` is alias for `docker-compose`


Links
-----

* [schors/tgdante2](https://github.com/schors/tgdante2) Dockerized Dante socks5 proxy for telegram. Alpine version

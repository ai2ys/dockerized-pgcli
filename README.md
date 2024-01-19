# dockerizsed-pgcli
Running pgcli in a Docker container.


Using `docker run`:

```bash
$ docker run -it --rm ai2ys/dockerized-pgcli
d80a5922776a:/#
```

Using `docker compose` with the [docker-compose.yml](./docker-compose.yml) file:

```bash
$ docker compose run --rm pgcli
pgcli:/# 
```
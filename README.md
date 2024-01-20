# dockerized-pgcli
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

A `bash` gets started and `pgcli` can get used from there.

<!-- ## Creating an alias

In case you want to use `pgcli` in GitHub codespaces or other VM the `host.docker.internal` will not work. In that case you will need to use the IP address of the host machine. To get the IP address of the host machine you can use the following command:

```bash
# retrieve ip4 address of host machine
ip -4 addr | grep -v '127.0.0.1' | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | head -n 1
```

```bash
$ ip4_localhost=$(ip -4 addr | grep -v '127.0.0.1' | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | head -n 1)
$ alias run_pgcli="docker run -it --rm --hostname pgcli --add-host ip4_host:$ip4_localhost --entrypoint ai2ys/dockerized-pgcli:4.0.1"
$ run_pgcli
pgcli:/# $ run_pgcli
/ # pgcli --help
Usage: pgcli [OPTIONS] [DBNAME] [USERNAME]

Options:
  -h, --host TEXT         Host address of the postgres database.
  -p, --port INTEGER      Port number at which the postgres instance is

... omitting options here for better readability...

  --help                  Show this message and exit.
``` -->


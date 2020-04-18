<p align="center"><img src="https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/320/apple/198/fire-extinguisher_1f9ef.png" width="120px"></p>
<h1 align="center">ts3exporter (container image)</h1>
<p align="center">Built-from-source container image of the <a href="https://github.com/hikhvar/ts3exporter">ts3exporter</a> <a href="https://teamspeak.com/en/downloads/#server">TeamSpeak 3 Server</a> <a href="https://prometheus.io/">Prometheus</a> exporter</p>


## Tags

### Docker Hub

Available on [Docker Hub](https://hub.docker.com) as [`ricardbejarano/ts3exporter`](https://hub.docker.com/r/ricardbejarano/ts3exporter):

- [`0.0.7-glibc`, `0.0.7`, `glibc`, `master`, `latest` *(Dockerfile.glibc)*](https://github.com/ricardbejarano/ts3exporter/blob/master/Dockerfile.glibc) (about `11.8MB`)
- [`0.0.7-musl`, `musl` *(Dockerfile.musl)*](https://github.com/ricardbejarano/ts3exporter/blob/master/Dockerfile.musl) (about `11.8MB`)

### Quay

Available on [Quay](https://quay.io) as:

- [`quay.io/ricardbejarano/ts3exporter`](https://quay.io/repository/ricardbejarano/ts3exporter), [`quay.io/ricardbejarano/ts3exporter-glibc`](https://quay.io/repository/ricardbejarano/ts3exporter-glibc), tags: [`0.0.7`, `master`, `latest` *(Dockerfile.glibc)*](https://github.com/ricardbejarano/ts3exporter/blob/master/Dockerfile.glibc) (about `11.8MB`)
- [`quay.io/ricardbejarano/ts3exporter-musl`](https://quay.io/repository/ricardbejarano/ts3exporter-musl), tags: [`0.0.7`, `master`, `latest` *(Dockerfile.musl)*](https://github.com/ricardbejarano/ts3exporter/blob/master/Dockerfile.musl) (about `11.8MB`)


## Features

* Super tiny (see [Tags](#tags))
* Compiled from source during build time
* Built `FROM scratch`, with zero bloat (see [Filesystem](#filesystem))
* Reduced attack surface (no shell, no UNIX tools, no package manager...)
* Runs as unprivileged (non-`root`) user


## Building

- To build the `glibc`-based image: `$ docker build -t ts3exporter:glibc -f Dockerfile.glibc .`
- To build the `musl`-based image: `$ docker build -t ts3exporter:musl -f Dockerfile.musl .`


## Filesystem

```
/
├── etc/
│   ├── group
│   └── passwd
└── ts3exporter
```


## License

See [LICENSE](https://github.com/ricardbejarano/ts3exporter/blob/master/LICENSE).

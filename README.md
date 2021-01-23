<p align="center"><img src="https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/320/apple/198/fire-extinguisher_1f9ef.png" width="120px"></p>
<h1 align="center">ts3exporter (container image)</h1>
<p align="center">Built-from-source container image of <a href="https://github.com/hikhvar">hikhvar</a>'s <a href="https://www.teamspeak.com/en/">TeamSpeak</a> metrics <a href="https://github.com/hikhvar/ts3exporter">exporter</a> for <a href="https://prometheus.io/">Prometheus</a></p>


## Tags

### Docker Hub

Available on Docker Hub as [`docker.io/ricardbejarano/ts3exporter`](https://hub.docker.com/r/ricardbejarano/ts3exporter):

- [`0.0.7`, `latest` *(Dockerfile)*](Dockerfile)

### RedHat Quay

Available on RedHat Quay as [`quay.io/ricardbejarano/ts3exporter`](https://quay.io/repository/ricardbejarano/ts3exporter):

- [`0.0.7`, `latest` *(Dockerfile)*](Dockerfile)


## Features

* Compiled from source during build time
* Built `FROM scratch`, with zero bloat
* Statically linked to the [`musl`](https://musl.libc.org/) implementation of the C standard library
* Reduced attack surface (no shell, no UNIX tools, no package manager...)
* Runs as unprivileged (non-`root`) user


## Building

```bash
docker build --tag ricardbejarano/ts3exporter --file Dockerfile .
```


## License

MIT licensed, see [LICENSE](LICENSE) for more details.

# br-docker

## Usage
To build Docker image:

```bash
$ docker build -t buildroot-1.0.0 .
```

To run it:

```bash
$ docker run --mount type=bind,source=<path>,target=/home/br/data -it buildroot-1.0.0 bash
```


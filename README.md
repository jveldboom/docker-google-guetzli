# Docker Google's Guetzli
Run Google's Guetzli within Docker.

Visit https://github.com/google/guetzli for Guetzli's full documentation

## Usage
```sh
docker --rm -v $(PWD):/tmp ghcr.io/jveldboom/docker-google-guetzli:latest \
  input.jpg output.jpg
```

## Run Examples
```sh
docker run --rm -v $(PWD):/tmp ghcr.io/jveldboom/docker-google-guetzli:latest \
  --quality 85 ./samples/bees.png ./samples/bees-out.png
```

Original | Processed with 85%
:------------: | :-------------:
![Original](./samples/bees.png)<br>177 KB | ![Original](./samples/bees-out.png)<br> 22 KB
![Original](./samples/rose.jpg)<br>219 KB  | ![Original](./samples/rose-out.png)<br> 103 KB

## TODO
- [ ] create pull request workflow
- [ ] include .dockerignore to reduce image size
- [ ] see if we can reduce overall container size

```sh
# dockerfile
apk add --no-cache --virtual .build-deps

...

apk del --no-cache .build-deps
rm -rf /var/tmp/* /tmp/* /opt/build
```

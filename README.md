# Docker Google's Guetzli 
Run Google's Guetzli image compression within Docker


# Install
- `git clone https://github.com/jveldboom/docker-google-guetzli.git`
- `docker build -t guetzli .`
- `docker run -rm -t guetzli -v $(PWD) input.png output.png`

# TODO
- Reduce container image size. Likely do not need full Ubuntu image
- Add to Docker Hub for easier installation
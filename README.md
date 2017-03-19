# Docker Google's Guetzli 
Run Google's Guetzli within Docker. 

Visit https://github.com/google/guetzli for Guetzli's full documentation


# Install
- `git clone https://github.com/jveldboom/docker-google-guetzli.git`
- `docker build -t guetzli .`
- `docker run --rm -v $(PWD):/tmp guetzli input.png output.png`

# Run Examples
- `docker run -v $(PWD):/tmp -t google --quality 85 ./samples/bees.png ./samples/bees-out.png`



# TODO
- Reduce container image size. Likely do not need full Ubuntu image
- Add to Docker Hub for easier installation
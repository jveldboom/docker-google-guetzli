# Docker Google's Guetzli 
Run Google's Guetzli within Docker. 

Visit https://github.com/google/guetzli for Guetzli's full documentation

# Run
- `docker run --rm -v $(PWD):/tmp jveldboom/google-guetzli input.jpg output.jpg`

# Run Examples
- `docker run --rm -v $(PWD):/tmp jveldboom/google-guetzli --quality 85 ./samples/bees.png ./samples/bees-out.png`

# TODO
- Reduce container image size. Likely do not need full Ubuntu image
- <strike>Add to Docker Hub for easier installation</strike>
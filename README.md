# Docker Google's Guetzli 
Run Google's Guetzli within Docker. 

Visit https://github.com/google/guetzli for Guetzli's full documentation

# Run
- `docker run --rm -v $(PWD):/tmp jveldboom/google-guetzli input.jpg output.jpg`

# Run Examples
- `docker run --rm -v $(PWD):/tmp jveldboom/google-guetzli --quality 85 ./samples/bees.png ./samples/bees-out.png`

Original | Processed with 85%
:------------: | :-------------:
![Original](./samples/bees.png)<br>177 KB | ![Original](./samples/bees-out.png)<br> 22 KB
![Original](./samples/rose.jpg)<br>219 KB  | ![Original](./samples/rose-out.png)<br> 103 KB

# TODO
- <strike>Reduce container image size. Likely do not need full Ubuntu image</strike>
- <strike>Add to Docker Hub for easier installation</strike>
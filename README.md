# Example Presentation For Docker-Revealjs

This uses the Docker image `fschl/revealjs:onbuild` to create a containerized Reveal.js presentation.

## Usage

1. make sure you have the docker image `fschl/revealjs:onbuild` locally available

2. create a single line Dockerfile

> FROM fschl/revealjs:onbuild

3. edit the `slides.md` file
4. add images to `/images` folder
5. run `make build` to run your presentation while editing slides content, etc.

## Attention

Because I havent made `fschl/docker-revealjs` an automated Docker build yet, you most likely need to clone [this repo](https://github.com/fschl/docker-revealjs ) and build the image yourself.



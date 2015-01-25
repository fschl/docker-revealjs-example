.PHONY: build slides shell

build:
	@docker build --rm -t fschl/revealjs:presentation .

slides:
	@docker build --rm -t fschl/revealjs:presentation .
	@docker run -it --rm \
		-p 8000:8000 \
		fschl/revealjs:presentation

dev:
	@docker build --rm -t fschl/revealjs:presentation .
	echo $(shell pwd)
	@docker run -it --rm \
		-p 8000:8000 \
		-v "$(shell pwd)"/slides.md:/revealjs/md/slides.md \
		-v "$(shell pwd)"/images:/revealjs/images \
		-v "$(shell pwd)"/custom.css:/revealjs/css/custom.css \
		fschl/revealjs:presentation

shell:
	@docker run -it --rm \
		-p 8000:8000 \
		fschl/revealjs \
		/bin/bash

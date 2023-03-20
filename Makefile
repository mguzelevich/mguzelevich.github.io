.PHONY: run test clean prepare

# tag = klakegg/hugo:latest
tag = klakegg/hugo:ext-ubuntu

exec_root = $(shell pwd)
exec_cmd = docker run --rm -it -v $(exec_root):/src -p 1313:1313 $(tag)


dummy:
	@echo "hugo"

build:
	$(exec_cmd) -D -d .output

serve:
	$(exec_cmd) serve

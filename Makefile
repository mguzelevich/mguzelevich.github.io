.PHONY: run test clean prepare

exec_root = $(shell pwd)
exec_cmd = docker run --rm -it -v $(exec_root):/src -p 1313:1313 klakegg/hugo:latest


dummy:
	@echo "hugo"

build:
	$(exec_cmd) -D -d .output

serve:
	$(exec_cmd) serve

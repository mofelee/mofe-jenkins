# vi: set noexpandtab :
.PHONY: test

setup:
	@ echo "This project require [autoenv](https://github.com/kennethreitz/autoenv) to setup environment variables"

install: setup
	ansible-galaxy install -r requirements.yml

provision:
	vagrant provision

test: clean
	vagrant up

clean:
	vagrant destroy -f

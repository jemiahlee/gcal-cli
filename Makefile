REPO_ROOT=$(shell git rev-parse --show-toplevel)
BIN=$(REPO_ROOT)/bin

virtualenv:
	virtualenv venv

requirements: virtualenv venv requirements.txt
	venv/bin/pip install -r requirements.txt

test: venv/bin/pip
	venv/bin/cram tests/cram

testfix: venv/bin/pip
	venv/bin/cram -i tests/cram

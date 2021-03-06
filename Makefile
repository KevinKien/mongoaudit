.PHONY: dist

default:
	pip install -I -r requirements.txt

init:
	./mongoaudit

test:
	pytest

dist:
	pyinstaller main.spec

install:
	/usr/bin/env python2 setup.py install

clean:
	rm -R ./dist

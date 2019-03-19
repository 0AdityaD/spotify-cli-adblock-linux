adblocker: adblock
	sudo cp adblock /usr/local/bin

clean:
	sudo rm -f MANIFEST || true && sudo rm -rf dist/ || true && sudo rm -rf spotify_cli_linux.egg-info || true

install: clean adblocker
	sudo python setup.py install

requirements:
	pip install -r dev-requirements.txt --upgrade

format:
	autopep8 --in-place --aggressive spotifycli/spotifycli.py	
	autopep8 --in-place --aggressive spotifycli/version.py
	autopep8 --in-place --aggressive spotifycli/__main__.py
	autopep8 --in-place --aggressive spotifycli/__init__.py
	autopep8 --in-place --aggressive setup.py

.DEFAULT_GOAL := install

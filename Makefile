.PHONY: fetch install

install:
	chmod +x install.sh && ./install.sh

fetch:
	chmod +x fetch_binaries.sh && ./fetch_binaries.sh
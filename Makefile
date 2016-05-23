
benchmark:
	git clone https://github.com/dholm/benchmark-init-el.git benchmark-init
	cd benchmark-init
	make

byte_compile:
	emacs -batch -f batch-byte-compile ~/.emacs.d/**/*el

build_all: benchmark 

export GNUCOBOL_SRC := http://gnu.c3sl.ufpr.br/alpha/gnucobol/gnucobol-3.0-rc1.tar.xz
export CUTPATH=$(abspath cobol-unit-test/)

all:	check-submodules build test

check-submodules:
	git submodule init
	git submodule update

build:
	make -C cobol build-all

clean:
	rm -f *~
	make -C cobol clean-all

test:
	make -C cobol test-all

install-gnucobol:
	make -C gnucobol3 download install

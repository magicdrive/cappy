PREFIX=${HOME}/local
CURRENTDIR=$(shell pwd -L | perl -p -e 's/ /\\ /g')

all:
	@echo "make [intall|uninstall]"

install:
	mkdir -p $(PREFIX)/bin/ $(PREFIX)/share/man/man1/
	cp -af $(CURRENTDIR)/cappy $(PREFIX)/bin/
	#cp -af $(CURRENTDIR)/.1 $(PREFIX)/share/man/man1/

uninstall:
	rm -f $(PREFIX)/bin/cappy
	#rm -f  $(PREFIX)/share/man/man1/.1


NAME 		= eos-deb-rebuild-info
PREFIX 		= /usr/local
INSTALLDIR 	= $(PREFIX)/share/eos-deb-rebuild-info
FILES	    = $(shell find info -type f) README.md

install : $(addprefix $(INSTALLDIR)/,$(FILES))

uninstall :
	rm $(INSTALLDIR)

# Files
$(INSTALLDIR)/% : %
	install -D -p -m 644 $< $(INSTALLDIR)/$(notdir $@)

deb:
	export PACKAGE_NAME="$(NAME)" \
	export PACKAGE_VERSION="1.0.1" \
	export PACKAGE_FILES="$(FILES)" \
	export PACKAGE_INSTALLDIR=$(INSTALLDIR:/%=%) \
	&& ./scripts/build_deb.sh

.PHONY: install uninstall deb

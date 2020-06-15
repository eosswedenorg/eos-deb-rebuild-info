NAME 		= eos-deb-rebuild-info
PREFIX 		= /usr/local
INSTALLDIR 	= $(PREFIX)/share/eos-deb-rebuild
FILES	    = $(shell find info -type f)

install : $(addprefix $(INSTALLDIR)/,$(FILES))

uninstall :
	rm $(INSTALLDIR)

# Files
$(INSTALLDIR)/% : %
	mkdir -p $(dir $@) && cp $< $@

deb:
	export PACKAGE_NAME="$(NAME)" \
	export PACKAGE_VERSION="1.0.0" \
	export PACKAGE_FILES="$(FILES)" \
	export PACKAGE_INSTALLDIR=$(INSTALLDIR:/%=%) \
	&& ./scripts/build_deb.sh

.PHONY: install uninstall deb

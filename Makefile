include /usr/share/templar/make/Makefile

##############
# parameters #
##############
# do you want to validate html?
DO_CHECKHTML:=1

########
# code #
########
SOURCES_HTML_MAKO:=$(shell find templartmpl \( -type f -or -type l \) -and -name "*.html.mako" 2> /dev/null)
SOURCES_HTML:=$(shell make_helper rmfdas $(SOURCES_HTML_MAKO))
HTMLCHECK:=html.stamp
ifeq ($(DO_CHECKHTML),1)
ALL+=$(HTMLCHECK)
all: $(ALL)
endif # DO_CHECKHTML

WEB_DIR:=../veltzer.github.io-gh-pages
COPY_FOLDERS:=static web

#########
# rules #
#########
$(HTMLCHECK): $(SOURCES_HTML) $(ALL_DEP)
	$(info doing [$@])
	$(Q)tidy -errors -q -utf8 $(SOURCES_HTML)
	$(Q)./node_modules/htmlhint/bin/htmlhint $(SOURCES_HTML) > /dev/null
	$(Q)mkdir -p $(dir $@)
	$(Q)touch $(HTMLCHECK)

.PHONY: install
install: all $(ALL_DEP)
	$(info doing [$@])
	$(Q)rm -rf $(WEB_DIR)/*
	$(Q)for folder in $(COPY_FOLDERS); do cp -r $$folder $(WEB_DIR); done
	$(Q)cp support/redirector.html $(WEB_DIR)/index.html
	$(Q)cd $(WEB_DIR); git commit -a -m "new version"; git push

.PHONY: debug_me
debug_me:
	$(info doing [$@])
	$(info WEB_DIR is $(WEB_DIR))
	$(info COPY_FOLDERS is $(COPY_FOLDERS))

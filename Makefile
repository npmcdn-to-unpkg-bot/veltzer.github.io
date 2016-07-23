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
HTMLCHECK:=out/html.stamp
ifeq ($(DO_CHECKHTML),1)
ALL+=$(HTMLCHECK)
endif # DO_CHECKHTML

#########
# rules #
#########
# do not touch this rule
all: $(ALL)
$(HTMLCHECK): $(SOURCES_HTML) $(ALL_DEP)
	$(info doing [$@])
	$(Q)tidy -errors -q -utf8 $(SOURCES_HTML)
	$(Q)node_modules/htmlhint/bin/htmlhint $(SOURCES_HTML) > /dev/null
	$(Q)mkdir -p $(dir $@)
	$(Q)touch $(HTMLCHECK)

.PHONY: gh-pages
gh-pages: $(ALL) $(ALL_DEPS)
	$(info doing [$@])
	$(Q)node_modules/gh-pages/bin/gh-pages --dist out/web

.PHONY: debug_me
debug_me:
	$(info doing [$@])

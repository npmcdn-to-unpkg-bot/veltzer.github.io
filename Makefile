TEMPLAR_GHPAGES_BRANCH:=master
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
	$(Q)make_helper wrapper-silent node_modules/htmlhint/bin/htmlhint $(SOURCES_HTML)
	$(Q)make_helper touch-mkdir $@
#$(Q)tidy -errors -q -utf8 $(SOURCES_HTML)

.PHONY: debug_me
debug_me:
	$(info doing [$@])

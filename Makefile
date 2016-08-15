TEMPLAR_GHPAGES_BRANCH:=master
include /usr/share/templar/make/Makefile

##############
# parameters #
##############
# where is the output folder ?
OUT:=out
# do you want to validate html?
DO_CHECKHTML:=1
# what is the stamp file for the tools?
TOOLS:=$(OUT)/tools.stamp
# do you want dependency on the makefile itself ?
DO_ALL_DEPS:=1

########
# code #
########
SOURCES_HTML_MAKO:=$(shell find templartmpl \( -type f -or -type l \) -and -name "*.html.mako" 2> /dev/null)
SOURCES_HTML:=$(shell make_helper rmfdas $(SOURCES_HTML_MAKO))
HTMLCHECK:=$(OUT)/html.stamp

ifeq ($(DO_CHECKHTML),1)
ALL+=$(HTMLCHECK)
endif # DO_CHECKHTML

# dependency on the makefile itself
ifeq ($(DO_ALL_DEPS),1)
ALL_DEPS:=Makefile $(TOOLS)
else
ALL_DEPS:=
endif

#########
# rules #
#########
# do not touch this rule
.PHONY: all
all: $(ALL) $(ALL_DEPS)

$(TOOLS): scripts/install.py scripts/tools.py
	$(info doing [$@])
	$(Q)scripts/install.py
	$(Q)make_helper touch-mkdir $@

$(HTMLCHECK): $(SOURCES_HTML) $(ALL_DEPS)
	$(info doing [$@])
	$(Q)make_helper wrapper-silent node_modules/htmlhint/bin/htmlhint $(SOURCES_HTML)
	$(Q)make_helper touch-mkdir $@
#$(Q)tidy -errors -q -utf8 $(SOURCES_HTML)

.PHONY: debug_me
debug_me:
	$(info doing [$@])

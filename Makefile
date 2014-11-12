include /usr/share/templar/make/Makefile

ALL:=$(TEMPLAR_ALL)
ALL_DEP:=$(TEMPLAR_ALL_DEP)

##############
# parameters #
##############
# do you want to show the commands executed ?
# Since we are using ?= for assignment it means that you can just
# set this from the command line and avoid changing the makefile...
DO_MKDBG?=0
# do you want to validate html?
DO_CHECKHTML:=1

########
# code #
########
# silent stuff
ifeq ($(DO_MKDBG),1)
Q:=
# we are not silent in this branch
else # DO_MKDBG
Q:=@
#.SILENT:
endif # DO_MKDBG

SOURCES_HTML_MAKO:=$(shell find templartmpl \( -type f -or -type l \) -and -name "*.html.mako" 2> /dev/null)
SOURCES_HTML:=$(shell make_helper rmfdas $(SOURCES_HTML_MAKO))
HTMLCHECK:=html.stamp
ifeq ($(DO_CHECKHTML),1)
ALL+=$(HTMLCHECK)
endif # DO_CHECKHTML

WEB_DIR:=../$(tdefs.project_name)-gh-pages
COPY_FOLDERS:=static web

#########
# rules #
#########

.DEFAULT_GOAL=all
.PHONY: all
all: $(ALL)
	$(info doing [$@])

.PHONY: clean
clean:
	$(info doing [$@])
	$(Q)git clean -xdf > /dev/null

.PHONY: debug
debug:
	$(info doing [$@])
	$(info ALL is $(ALL))
	$(info ALL_DEP is $(ALL_DEP))

$(HTMLCHECK): $(SOURCES_HTML) $(ALL_DEP)
	$(info doing [$@])
	$(Q)tidy -errors -q -utf8 $(SOURCES_HTML)
	$(Q)mkdir -p $(dir $@)
	$(Q)touch $(HTMLCHECK)

.PHONY: install
install: all $(ALL_DEP)
	$(info doing [$@])
	$(Q)-for folder in $(COPY_FOLDERS); do rm -rf $(WEB_DIR)/$$folder; done
	$(Q)for folder in $(COPY_FOLDERS); do cp -r $$folder $(WEB_DIR); done
	$(Q)cp support/redirector.html $(WEB_DIR)/index.html
	#$(Q)cd $(WEB_DIR); git commit -a -m "new version"; git push

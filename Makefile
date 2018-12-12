WORKFLOWS_DIR := ~/Library/Application\ Support/Alfred\ 3/Alfred.alfredpreferences/workflows
BUNDLE_ID := dk.sniarn.alfred-mediainfo-workflow
DIST_NAME := alfred-mediainfo-workflow

all: dist

dist: clean-dist
	mkdir -p $(CURDIR)/dist
	zip -r $(CURDIR)/dist/$(DIST_NAME).alfred3workflow $(CURDIR)/src/*

clean-dist:
	rm -rf $(CURDIR)/dist

link:
	ln -sFhv $(CURDIR)/src $(WORKFLOWS_DIR)/$(BUNDLE_ID)

unlink:
	rm $(WORKFLOWS_DIR)/$(BUNDLE_ID)

.PHONY: dist clean-dist link unlink

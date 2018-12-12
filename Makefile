WORKFLOWS_DIR := ~/Library/Application\ Support/Alfred\ 3/Alfred.alfredpreferences/workflows
WORKFLOW_DIR := alfred-mediainfo-workflow
BUNDLE_ID := dk.sniarn.$(WORKFLOW_DIR)
DIST_NAME := $(WORKFLOW_DIR)

all: dist

dist: clean-dist
	mkdir -p $(CURDIR)/dist
	zip -r $(CURDIR)/dist/$(DIST_NAME).alfred3workflow $(CURDIR)/$(WORKFLOW_DIR)/*

clean-dist:
	rm -rf $(CURDIR)/dist

link:
	ln -sFhv $(CURDIR)/$(WORKFLOW_DIR) $(WORKFLOWS_DIR)/$(BUNDLE_ID)

unlink:
	rm $(WORKFLOWS_DIR)/$(BUNDLE_ID)

.PHONY: dist clean-dist link unlink

WORKFLOWS_DIR := ~/Library/Application\ Support/Alfred\ 3/Alfred.alfredpreferences/workflows
BUNDLE_ID := dk.sniarn.alfred-mediainfo-workflow
WORKFLOW_NAME := MediaInfo

all: dist

dist: clean-dist
	mkdir -p $(CURDIR)/dist
	cd $(CURDIR)/src; zip -r ../dist/$(WORKFLOW_NAME).alfred3workflow *

clean-dist:
	rm -rf $(CURDIR)/dist

link:
	ln -sFhv $(CURDIR)/src $(WORKFLOWS_DIR)/$(BUNDLE_ID)

unlink:
	rm $(WORKFLOWS_DIR)/$(BUNDLE_ID)

.PHONY: dist clean-dist link unlink

WORKFLOWS_DIR := ~/Library/Application\ Support/Alfred/Alfred.alfredpreferences/workflows
BUNDLE_ID := dk.sniarn.alfred-mediainfo-workflow

all:

link:
	ln -sFhv $(CURDIR)/src $(WORKFLOWS_DIR)/$(BUNDLE_ID)

unlink:
	rm $(WORKFLOWS_DIR)/$(BUNDLE_ID)

.PHONY: link unlink

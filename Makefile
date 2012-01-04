KANSO_PATH= ./kanso

JS_DIR= js
JS_FILE= backbone.couch.js
JS_FILE_DST = backbone-couch.js
VERSION= $(shell grep VERSION $(JS_DIR)/$(JS_FILE) | cut -d \" -f 2)

kanso:
	mkdir -p $(KANSO_PATH)
	cp $(JS_DIR)/$(JS_FILE) $(KANSO_PATH)/$(JS_FILE_DST)
	cp README $(KANSO_PATH)
	cp LICENSE $(KANSO_PATH)
	sed -e 's/VERSION/\"$(VERSION)\"/' kanso.json.in > $(KANSO_PATH)/kanso.json
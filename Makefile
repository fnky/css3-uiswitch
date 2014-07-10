
SASSC = sass

SASS_DIR=./uiswitch.scss
CSS_DIR=./uiswitch.css

BOWER_PATH=bower_components/
BOURBON_LOAD_PATH=$(BOWER_PATH)bourbon/dist/
LOAD_PATH=$(BOURBON_LOAD_PATH)

COMMAND=$(SASSC) --load-path $(LOAD_PATH)


%.css: %.scss
	$(SASSC) -C $< > $@

build:
	$(COMMAND) $(SASS_DIR) $(CSS_DIR)

watch:
	$(COMMAND) --watch $(SASS_DIR):$(CSS_DIR)

clean:
	-rm $(CSS_DIR)

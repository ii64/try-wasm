TOPTARGETS := all clean build
SUBDIRS := $(wildcard */.)
WASM_BIN := $(shell find . -name "*.wasm")

$(TOPTARGETS): $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: $(TOPTARGETS) $(SUBDIRS)

view:
	du --block-size=1 $(WASM_BIN)

objdump:
	for f in $(WASM_BIN); do \
		echo "\n\n========\n" $$f ; \
		wasm-objdump -h $$f ; \
	done
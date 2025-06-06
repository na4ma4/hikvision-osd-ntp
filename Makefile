SHELL=/bin/bash -o pipefail

OPTMPL_FILES += $(shell find . -type f -name '*.optmpl' | sed -e 's/.optmpl$$//g')

.DELETE_ON_ERROR:

.PHONY: all
all: $(OPTMPL_FILES)

.PHONY: clean
clean:
	$(RM) -r artifacts
	$(RM) -r $(OPTMPL_FILES)

%: %.optmpl
	-@mkdir -p "$(@D)"
	op inject -f -i "$(<)" -o "$(@)"

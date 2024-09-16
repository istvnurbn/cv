.PHONY: compiled

CC = xelatex
DOCUMENTS = $(shell ls *.tex)
COMPILED_DIR = compiled

all: create_dir documents

create_dir:
	
	mkdir -p $(COMPILED_DIR)

documents: 

	for doc in $(DOCUMENTS); do $(CC) -output-directory=$(COMPILED_DIR) $$doc; done
	find $(COMPILED_DIR) -type f ! -iname "*.pdf" -delete

clean:
	
	rm -rf $(COMPILED_DIR)
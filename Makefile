.PHONY: all create_dir documents clean

CC = xelatex
DOCUMENTS = $(wildcard *.tex)
COMPILED_DIR = compiled

all: create_dir documents

create_dir:
	
	mkdir -p $(COMPILED_DIR)

documents: 

	for doc in $(DOCUMENTS); do $(CC) -interaction=nonstopmode -halt-on-error -output-directory=$(COMPILED_DIR) $$doc || exit 1; done
	find $(COMPILED_DIR) -type f ! -iname "*.pdf" -delete

clean:
	
	rm -rf $(COMPILED_DIR)

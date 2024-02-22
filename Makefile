.PHONY: compiled

CC = xelatex
DOCUMENTS = $(shell ls *.tex)
COMPILED_DIR = compiled

all: create_dir documents

create_dir:
	
	mkdir -p $(COMPILED)

documents: 

	for doc in $(DOCUMENTS); do $(CC) -output-directory=$(COMPILED_DIR) $$doc; done
	rm -rf $(COMPILED_DIR)/*.aux
	rm -rf $(COMPILED_DIR)/*.log

clean:
	
	rm -rf $(COMPILED_DIR)
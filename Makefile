.PHONY: compiled

CC = xelatex
DOCUMENTS = $(shell ls *.tex)
COMPILED = compiled

all: create_dir documents

create_dir:
	
	mkdir -p $(COMPILED)

documents: 

	for doc in $(DOCUMENTS); do $(CC) -output-directory=$(COMPILED) $$doc; done
	rm -rf $(COMPILED)/*.aux
	rm -rf $(COMPILED)/*.log

clean:
	
	rm -rf $(COMPILED)
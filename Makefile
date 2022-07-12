METADATA=meta.yaml 
PANDOC=pandoc --metadata-file=$(METADATA)
HTML_OPT=--mathjax --standalone --slide-level=2 -V theme:"solarized"
SYNC= rsync -rupdE --itemize-changes --exclude-from='.rsyncignore' --exclude-from='.gitignore' --delete

all: index.html

index.html: science-informatique.md $(METADATA)
	$(PANDOC) --to=revealjs  $(HTML_OPT) -o $@ $<

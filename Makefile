.PHONY: clean tag

clean:
	find . -name "*.aux" -delete
	find . -name "*.log" -delete
	find . -name "*.bbl" -delete
	find . -name "paper.tex" -delete
	find . -name ".DS_Store" -delete

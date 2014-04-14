all: report.pdf clean-temp
	@echo "Built!"

clean-temp:
	@rm -f *.out *.aux *.log *.toc *.lof *.lot

clean-tex:
	@rm -f report.tex glossary.tex

clean: clean-temp clean-tex
	@rm -f *.pdf *.markdown *.html

report.markdown: *.txt
	gpp -H report.txt >report.markdown

appendix.tex: appendix.txt
	gpp -H appendix.txt | pandoc -f markdown -t latex -o appendix.tex

glossary.tex: glossary.txt
	pandoc -f markdown -t latex glossary.txt -o glossary.tex

glossary.html: glossary.txt
	pandoc -f markdown -t html glossary.txt -o glossary.html

report.tex: report.markdown glossary.tex appendix.tex
	pandoc -f markdown -t latex -F pandoc-citeproc -s --include-after-body=glossary.tex --include-after-body=appendix.tex report.markdown | grep -v maketitle >report.tex

report.html: report.markdown glossary.html
	pandoc -f markdown -t html -F pandoc-citeproc -s --include-after-body=glossary.html report.markdown >report.html

report.pdf: report.tex
	pdflatex report.tex >/dev/null && pdflatex report.tex >/dev/null

all: resume.pdf png

png: 
	convert -density 300 resume.pdf images/resume.png

resume.pdf: src/resume.tex
	pdflatex src/resume.tex 
	rm *.log *.aux

cover.pdf: src/cover.tex
	pdflatex src/cover.tex

cover_resume.pdf: src/resume.pdf src/cover.pdf
	pdfunite src/cover.pdf src/resume.pdf src/cover_resume.pdf

clean:
	rm src/*.aux src/*.log src/*.pdf

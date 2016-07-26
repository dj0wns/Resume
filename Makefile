all: resume.pdf

resume.pdf: resume.tex
	pdflatex resume.tex

cover.pdf: cover.tex
	pdflatex cover.tex

cover_resume.pdf: resume.pdf cover.pdf
	pdfunite cover.pdf resume.pdf cover_resume.pdf

clean:
	rm *.aux *.log *.pdf

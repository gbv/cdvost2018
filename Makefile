presentation.pdf: presentation.md
	pandoc -s -S --template vzg-slides.tex -t beamer -o $@ $<

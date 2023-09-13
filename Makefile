SOURCE=chapters
BUILD=build
BOOK=book
TAG=3.1.1.0-latex-2.4.1-eisgovel
pdf:
	docker run -it --rm -v $(PWD):/work -w /work binblee/pandoc:$(TAG) \
		--filter pandoc-crossref \
		--pdf-engine=xelatex \
		--template=eisvogel-2.4.1.latex \
		--highlight-style tango \
		--toc \
		--number-sections \
		-o $(BUILD)/$(BOOK).pdf \
		-V CJKmainfont="Noto Serif CJK SC" \
		--resource-path=./chapters/01:./chapters/02 \
		$(SOURCE)/meta.md $(SOURCE)/01/*.md $(SOURCE)/02/*.md

epub:
	docker run -it -v $(PWD):/work -w /work binblee/pandoc:$(TAG) \
		--filter pandoc-crossref \
		--toc \
		--number-sections \
		--mathml \
		-o $(BUILD)/$(BOOK).epub \
		--resource-path=./chapters/01:./chapters/02 \
		$(SOURCE)/meta.md $(SOURCE)/01/*.md $(SOURCE)/02/*.md

all: pdf epub

clean:
	rm $(BUILD)/book.*

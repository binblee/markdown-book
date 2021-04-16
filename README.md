# Markdown Book Template

A markdown book template with:
- Eisvogel latex template
- pandoc docker image [based on pandoc ubuntu-latex](https://hub.docker.com/r/pandoc/ubuntu-latex)
  - addition latex packages required for using Eisvogel latex template
  - Simlified Chinese font (Noto CJK)
- background pdf in [backgrounds](backgrounds) from Eisvogel sample
- Sample contents copied from python document Simplified Chinese [https://docs.python.org/zh-cn/3/tutorial/index.html](https://docs.python.org/zh-cn/3/tutorial/index.html)

## How to use

Docker is required to use this template. 


Markdown files are in [chapters](chapters) directory, images in figures directory. Update [chapters/meta.md](chapters/meta.md) if you have more directories. Run below command to create pdf file:

```bash
make pdf
```

Generated book is in [build](build) directory.



If you do not want to use Chinese font, please remove this line from [Makefile](Makefile) :

```Makefile
		-V CJKmainfont="Noto Serif CJK SC" \
```



You have to install pandoc and texlive if you prefer command line. Please do not foget to update [Makefile](Makefile) as well. 




## Build docker image
Just in case you want to know how to build pandoc image. Dockerfile is in [docker](docker) directory, command to build docker image:

```bash
docker-compose build
```



## References

Ryan Frazier's blog: [Write a Book with Markdown](https://pianomanfrazier.com/post/write-a-book-with-markdown/)

Pandoc at docker hub: [https://hub.docker.com/u/pandoc](https://hub.docker.com/u/pandoc)

Eisvogel - [https://github.com/Wandmalfarbe/pandoc-latex-template](https://github.com/Wandmalfarbe/pandoc-latex-template)

StefanoCecere markdown book template - [https://github.com/StefanoCecere/markdown_pandoc_book_template](https://github.com/StefanoCecere/markdown_pandoc_book_template)


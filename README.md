## How to build

Building is very straightforward, you will need LaTeX and Git.
The following command will create a local copy of the source code for you.

`git clone https://github.com/anton-petrunin/book.git`

Go to the created folder and run `pdflatex`,  `makeindex` and `biber`:

`cd book/`<br/>
`pdflatex arXiv.tex`<br/>
`makeindex arXiv`<br/>
`biber arXiv`<br/>
`pdflatex arXiv.tex`

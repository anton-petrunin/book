## How to build

Building is very straightforward, you will need LaTeX and Git.
The following command will create a local copy of the source code for you.

`git clone https://github.com/anton-petrunin/book.git`

Go to the created folder and run `pdflatex`,  `makeindex`,  `mpost` and `biber`:

`cd book/`<br/>
`cd mppics/`<br/>
`mpost pic`<br/>
`cd ..`<br/>
`pdflatex arXiv.tex`<br/>
`makeindex arXiv`<br/>
`biber arXiv`<br/>
`pdflatex arXiv.tex`

Files for arXiv:

`tar -cvf arXiv.tar --files-from arXiv-list.txt`

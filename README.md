# A template for academic papers and presentations

This repository provides a LaTeX template designed for academic papers and presentations. It includes configurations for various formatting options to suit different requirements.

## Usage
To use this template, clone the repository and modify the `paper.tex` file according to your needs.
You can adjust the options in the document class declaration at the beginning of the `paper.tex` file.
To compile a file, e.g. `paper.tex`, run `latexmk -pdf paper.tex`.

This repo is intended to be used in [code-server](https://github.com/coder/code-server) or [vscode](https://code.visualstudio.com/) with the [LaTeX Workshop extension](https://github.com/James-Yu/LaTeX-Workshop).

### Options
- `anonymous=true|`<ins>`false`</ins>
Toggles the inclusion of authorship in the title page.
- `fullversion=`<ins>`true`</ins>`|false`
Generic flag that (by default) toggle inclusion of the table-of-contents (TOC).
- `numeric=`<ins>`true`</ins>`|false`
Whether citations are `numeric` or `trad-alpha` (initials of authors followed by the year of publication).
- `draft` is specified as an option in the document class.
Draft mode offers a wider layout with space for in-document comments.

### Additional features
- Can compile into linearized pdfs.
- By default the LaTeX Workshop compilation placed auxiliary files into `/temp_disk`, so if this folder is a temporary RAM disk, the compilation process can be sped up.
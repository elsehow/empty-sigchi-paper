# paper

CHI 2018 paper, generated from an org mode file

## setup

add this to your .spacemacs
(you only have to do this once)

```elisp
  (add-to-list 'org-latex-classes
             '("acmart"
               "\\documentclass[sigconf]{acmart}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
               
  (setq org-latex-pdf-process (quote ("pdflatex --batch %f"
                                      "bibtex %b"
                                      "pdflatex --batch %f"
                                      "pdflatex --batch %f")))

               
```

## writing

first, edit authors.tex to get everything set up the way you want it.

next, just edit the file paper.org, and export it as a PDF or HTML file (by default that's `, e l o` in spacemacs org layer).

export your bibliography to `refs.bib`.
to insert a citation in `paper.org`, just do `, i c` in spacemacs to pull up org-ref.
(org-ref comes with the spacemacs bibtex layer - see spacemacs docs for installing that.)

you can keep your raw data in `data/`, and do your analysis in `analysis/`. export or copy your figures to `figures/`.

## license

BSD

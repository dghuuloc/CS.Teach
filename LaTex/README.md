# <p align="center"> Getting Started with LaTeX </p>
---









## Introduction
* **Title:**
Hard to imagine a cover without a title, to define it just type `\title{My First Article in LaTeX!\vfill}` and give your work a title that suits it. For good measure, you should add `\vfill` at the end of your title. This label will push everything that comes after the title so it just fits within the same page. This way, we can ensure that while the title is at the top of the page, things like authors or date are left at the bottom.
---
* **Author(s)**
Give credit where credit is due! Add as many authors as you need with `\author{author1}` . You can add more authors and display them all at the same height, possibly avoiding hurting egos, like `\author{auhtor1 \and author2}`. To add them verticaly, swap `\and` with `\\` to make a line break between the authors.
---
* **Affiliation**
Your work took place in an institution? Make sure to mention / give credit to it, with this simple tag \affil{Universidad Carlos III de Madrid, Spain}`.
---
* **Date**
And last but not least, it’s always nice to specify when your work took place. Just add `\date{Once upon a time}` and you are good to go!

As we anticipated before, we must construct the cover from within the document with `\maketitle` , which should look something like the following:
```tex
\begin{document}
  \maketitle
  \thispagestyle{empty}
  \newpage
  \section{Introduction}
\end{document}
```
> [!NOTE]
> There is a `\newpage` tag just after `\maketitle` , which ensures that only the cover is featured on the front page. We use `\thispagestyle{empty}` to remove the page counter at the bottom of the page.


```tex
\documentclass{article}
\title{Research in Project Engineering: the nature of questions asked}
\author{
Wan Geoffrey Hillary \\
School of Engineering, Economics and Management,\\
University of the, \underline{Wakanda}
}
\date{\May 2021}
\begin{document}
\maketitle
\begin{abstract}
This is the paper's abstract \ldots
\end{abstract}
\section{Purpose of the Paper}
The objective of this research was to categorize the access the nature of the project, design and management of engineering project questions that were proposed for final year research \ldots

\paragraph{Outline}
The remainder of this article is organized as follows.
Section~\ref{previous work} gives account of previous work.
Our new and exciting results are described in Section~\ref{results}.
Finally, Section~\ref{conclusions} gives the conclusions.
\section{Previous work}\label{previous work}
\section{Results}\label{results}
\section{Conclusions}\label{conclusions}
\end{document}
```

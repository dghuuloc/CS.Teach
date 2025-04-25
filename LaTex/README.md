# <p align="center"> Getting Started with LaTeX </p>
---









## Introduction to Cover
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

## Index

```tex
\begin{document}
  [...]
  \tableofcontents{}
  \setcounter{page}{1}
  \newpage
  [...]
\enddocument 
```
> [!NOTE]
> How we have to set the page number of our index to 1, as otherwise it will still count the cover (although we are not displaying) and mark the index as page 2.

## Titles & Subtitles
The foundation of any well structured paper, titles and subtitles are as easy in LaTeX as you may already expect! Just add `\section{Title}` for your titles, and `\subsection{Subtitle}` all the way down to `\subsubsection{Sub-subtitle}`.

## Bold, Italic & Underline
Emphasizing key concepts it vital to ensure your work gets to your readers. As everything with LaTeX, it is quite intuitive!
* **Bold:** `\textbf{Bold}`
* **Italic:** `\textit{Italic}`
* **Underline:** `\underline{Underline}`

And all the possible combinations of the three above! For example, we may want to have **bold** and **italic** at the same time, which can be done with something like this:
```tex
\textbf{\textit{Bold and Italic!}}
```

## Bullet Lists
Personally, I could not live without bullet lists, they just make everything look clean and organised. Here is how you can make one in LaTeX:
```tex
\begin{itemize}
    \item First!
    \item Second!
    [...]
    \item Last!                      
\end{itemize}
```
## Images
Images add life to your work, making it easier to follow, so don’t forget to add some! In order to add images in LaTeX, we must add the following package at the beginning of the document: `\usepackage{graphicx}`.

Now adding images is easy peasy, just use `\includegraphics{img.jpg}`. But editing them takes more effort than what MS Words as gotten us used to. The easiest way to center and image is by surrounding it with `center`:
```tex
\begin{center}
  \includegraphics{img.jpg}
\end{center}
```
Changing its dimensions its a bit more complicated. To give you an insight, let’s take a look at how to change the width of an image so it matches the width of the text:
```tex
\includegraphics[width=\textwidth]{img.jpg}
```





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

# <p align="center"> Getting Started with LaTeX </p>
---

## Document Formats and Layouts
When starting a new blank project. The `\documentclass{article}` command specifies the document class. The second command `\usepackage[utf8]{inpuenc}` at this point. It is related to how the TeX compiler expects input and processes characters.
```tex
\documentclass[12pt, oneside, a4paper]{report}
\usepackage[utf8]{inpuenc}
```

## LaTex's Components
Using document classes to influence design
LaTeX is supplied with a set of standard classes, all of which look similar but with some variations:
* **article**: short documents without chapters
* **report:** longer documents with chapters, single-sided printing
* **book:** longer documents with chapters, double-sided printing, with front- and back-matter (for example an index)
* **letter:** correspondence with no sections
* **slides**: for presentations

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
* `\textbf{Virtualisation}` With this command you cna bold the word you type in curly braces
* `\textit{container}` With this command you can italicise the word you type inside curly braces.
* `\emph{should not}` With this command you can emphasize(highlight) the word you type in curly braces
* `\enumerate{Advantages}` With this command you can make an ordered list.
* **Bold:** `\textbf{Bold}`
* **Italic:** `\textit{Italic}`
* **Underline:** `\underline{Underline}`

And all the possible combinations of the three above! For example, we may want to have **bold** and **italic** at the same time, which can be done with something like this:
```tex
\textbf{\textit{Bold and Italic!}}
```

## Lists
Personally, I could not live without bullet lists, they just make everything look clean and organised. Here is how you can make one in LaTeX:
```tex
\documentclass{article}
\usepackage[T1]{fontenc}
\begin{document}
Ordered
\begin{enumerate}
  \item An entry
  \item Another One
  \item Wow! Three entries
\end{enumerate}
Unordered
\begin{itemize}
  \item An entry
  \item Another One
  \item Wow! Three entries
\end{itemize}
\end{document}
```
---
## Tables
Drawing tables ca be tricky but once you get the hang of it, the outcome is beautiful. The environment you use is `\tabular`
```tex
\begin{tabular}{| l | c r|}
a & b & c \\
d & e & f \\ 
\hline
g & h & i \\
\hline
\end{tabular}
```
Let’s tackle this line by line. What `\begin{tabular}` means is straightforward. It starts the table. The brackets following it is for the number of columns and text alignment in each column. `l` means left align, `c` for center and `r` for right align. The `|` in between means a vertical line separates the two columns. If you don’t want a vertical line replace it with a space just like between columns 2 and 3.

In the following lines the cells are configured. `&` is used for column breaks. And at the end of each line is `\\` which is there to indicate a line break. If you want a horizontal line between the rows you can add `\hline` after each line break.


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


---
## Math & Equations
As a CS student, I find myself adding equations more time that I would like in my papers. Thankfully adding equations in LaTeX is as simple as everything else.

To add equations inline with text, we must wrap the equation with the dollar sign:
```tex
Newton's second law: $F=ma$
The sum of two variables \(a\) and \(b\) is given by:
\[ a + b \]
```
If you otherwise prefer to display your equations centered on a different line, we have to wrap our equation with `\[ ... \]`
```tex
Newton's second law:
\[F=ma\]
```

* **Baby Steps:** Moving on, let's do a slightly more complex example:
```tex
\noindent Einstein's famous equation \( E = mc^2\) relates \\
energy (\( E \)), mass (\( m \)), and the speed of light (\( c \)).
```
Here we enclose an Equation with `\( Equation... \)` , note that variables have double parentheses : `(\( Variable \))` , there’s also a little bit of formatting, removing the Indent of the first line with `\noindent` and adding a line break with `\\`.

Here's some, more basic Mathematical Expressions:
```tex
\documentclass{article}
\begin{document}
  Fractions: \( \frac{3}{4} \)
  Exponents: \( x^{2} \)
  Square Roots: \( \sqrt{2} \)
  Subscripts and Superscripts: \( x_{1} \)
  Greek Letters: \( \alpha, \beta, \gamma \)
  Summation: \( \sum_{i=1}^{n} i \)
  Integrals: \( \int_{0}^{\pi} \sin(x) dx \)
  Limits: \( \lim_{x \to 0} \frac{\sin(x)}{x} \)
  Multiplication: \( 3 \cdot 4 \)
  Divisions: \( 10/2 \)
\end{document}
```
And a more complex equation:
```tex
\documentclass{article}
\begin{document}
  \( \frac{{1}}{{2\pi i}} \oint_C \frac{{f(z)}}{{(z - z_0)^{n+1}}} \, 
  dz = \frac{{f^{(n)}(z_0)}}{{n!}} \) \\ 
\end{document}
```
A matrix:
```tex
\documentclass{article}
\usepackage{amsmath}
\begin{document}
$$
\begin{bmatrix} 
1 & 2 & 3 \\
4 & 5 & 6 \\
7 & 8 & 9
\end{bmatrix}
$$
\end{document}
```
> [!NOTE]
> Matrices and arrays are bit tricky as each LaTeX library seems to 
deal with them in a different way, here we had to import a package:
amsmath, also note the use of $$ instead of `\[ ... \]` which is 
an alternative syntax.

***And a simple example involving theorems, definitions, and proofs:**
```tex
\documentclass{article}
\usepackage{amsthm} % Required for theorem environments

\theoremstyle{plain} % Style for theorems (italicized body)
\newtheorem{theorem}{Theorem} % Define theorem environment

\begin{document}

  \begin{theorem}[Fundamental Theorem of Arithmetic]
  Every integer greater than 1 can be uniquely expressed as a
  product of prime numbers, up to the order of the factors.
  \end{theorem}
  
  \begin{proof}
  Let \( n \) be an integer greater than 1. We'll prove the 
  theorem by induction on \( n \).
  
  \textbf{Base Case:} For \( n = 2 \), the theorem holds 
  since 2 is itself a prime number.
  
  \textbf{Inductive Step:} Assume the theorem holds f
  or all integers \( k \) such that \( 2 \leq k \leq n \). 
  We'll show that it holds for \( n + 1 \).
  
  If \( n + 1 \) is prime, then it can be expressed as a 
  product of a single prime number, which satisfies the theorem.
  
  If \( n + 1 \) is composite, then it can be expressed as 
  \( n + 1 = ab \), where \( 2 \leq a, b \leq n \). 
  By the induction hypothesis, both \( a \) and \( b \) 
  can be expressed as products of prime numbers. 
  Therefore, \( n + 1 \) can also be expressed as a product of prime numbers.
  
  Thus, by mathematical induction, the theorem holds for 
  all integers greater than 1.
  \end{proof}
\end{document}
```



















---
## Syntax highlighting
Syntax highlighting is a must for me, as I work around code all the time, and I must say I was really impressed by the performance of LaTeX in this field compared to other popular text editors. In order to user syntax highlighting we must add another package at the beginning of our document, `\usepackage{minted}`.

To use it, you must follow the following structure:
```tex
\begin{minted}{python}
  while(True):
    print("Hello, World!)
\end{minted}
```
As far as I’m concerned, it also supports `java` and `c`.
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

## More Features
While outside the scope here, there’s a few more things that you can do with/in LaTeX, these are a few that caught my eye:

**Academic Paper Elements (like footnotes)**:
```tex
\documentclass{article}
\begin{document}
  This is a sentence with a footnote\footnote{This is the footnote text.}.
Another sentence follows.
\end{document}
```

## Bibliography
In a thesis, it is often necessary to cite several references in a row. If you use multiple `\cite` commands `(\cite{ref1}\cite{ref2}\cite{ref3})`, the references will be displayed in separate blocks: [1][2][3]. If you want to display the references differently, it is possible to put the references in the same command, by separating them with commas. It is necessary to remove all spaces from the inside of the command: `\cite{ref1,ref2,ref3}`. The references are now displayed as [1,2,3]. To display the references in a "smarter way", it is also possible to use the cite package, and the reference will be displayed as [1-3].

## Layout
Now, let’s talk about layout. LaTeX generally takes care of everything for you, but you may want to change some elements. For instance, LaTeX systematically remove the paragraph indent at the beginning of a chapter, a section or a subsection. To avoid such behavior, it is possible to use the package _indentfirst_. It is possible to set the indentation by using the `\setlength{\parindent}{1mm}`. This will set the indentation to 1mm from the place the command is written until a new `\setlength{\parindent}`. Note that it is also possible to change the space between paragraphs using a `\setlength{\parskip}{1mm}`.

It is also possible to add an element to the table of contents. to do so, just use the `\addcontentsline`. This command is very useful, for instance to add the bibliography to the table of content, because it is not added by default. Beware, however, of the place where you put the command. In particular, at the beginning of a page (for instance after a `\newpage`) you may be a bit surprised. To avoid wrong page numbers, you can use the `\clearpage` command before the `\addcontentsline`.

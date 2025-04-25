# <p align="center"> Getting Started with LaTeX </p>
---
## Table Of Contents

- Document structure
- [LaTeX command instructions](https://github.com/dghuuloc/Full-Stack/tree/main/contents/latex/commands)
- Document Preambles
- Adding a Title, Author, and Date
- Adding a Comment
- Adding Bold, Italics, and Underlining
- Adding images
- Reamble of a Document
- Captions, labels and references
- Creating Lists
- Creating Tables
- Macros
- Adding Math
- Abstracts
- Chapters and Sections
- Captions, labels and references
- Packages and Classes
- Adding a Tables of Contents
---
## What are LaTeX Packages?
A basic TeX distribution doesn't actually provide much functionality. In most cases, creating a LaTeX document will require packages that provide additional options or functionality. The packages generally come into use when you want to insert an image or graphics, colored texts, or a source code from a file into a document, etc.

Packages required by a document are called in the **preamble** of your LaTeX document, i.e. before the `\begin{document}` statement. The syntax to do so is `\usepackage[options]{package_name}`, with the name of the package included in the brackets.

## __Understanding `\documentclass [option] {type}`__
A LaTeX document starts with the command `\documentclass [option] {type}`. The most common document-classes in LaTex are: ___Book___, ___Report___, ___Article___ or ___Letter___
- An `article` does not provide `chapter`, whereas `book` and `report` do. Thus, the first structuring element of an `article` is `\section{name}`.
- In a `book`, a header is automatically added to each page indicating the page number as well as the chapter name on even pages and the section name on odd pages
- A `book` is always 2-sided whereas in a `report` or `article` you have to specify it by using the `twoside` option. In addition, in a `book` and `report` the `titlepage` and `abstract` will take a whole page each, which is not the case for `article`. In an `article`, you can use the options `titlepage` and `abstract`.

### __Available document structure commands:__
* **Book:** `\part{}`, `\chapter{}`, `\section{}`, `\subsection{}`, `\subsubsection{}`, `\paragraph{}`, `\subparagraph{}`.
* **Report:** `\part{}`, `\chapter{}`, `\section{}`, `\subsection{}`, `\subsubsection{}`, `\paragraph{}`, `\subparagraph{}`.
* **Article:** `\part{}`, `\section{}`, `\subsection{}`, `\subsubsection{}`, `\paragraph{}`, `\subparagraph{}`.
* **Letter:** A letter does not know the same structuring commands as other formats, but more specific commands like `\signature{}`, `\address{}`, `\opening{}` and `\closing{}`.

Except `\part{}`, all structuring commands build a hierarchy. They have a standard formating and numeration.

## Understanding LaTeX Commands
LaTeX commands begin with a backslash, followed by big or small letters, and are usually named in a descriptive way.

Commands can have **parameters**, that is, options that determine in which way the command does its work. The values that we hand over as parameters are called **arguments**. They are given in curly braces or square brackets, as we will explain now.

So, calling a command can look like this:
```tex
\commandname[optional_argument]{main_argument}
```
Note, that all commands must be proceeded by the backslash mark and the main argument must be included inside `{..}` pair.

Some commands have more than one arguments, for example:
```tex
\multicolumn{number of columns joined}{alignment}{content} 
```
Some commands do not need {} pair to work well, for example:
```tex
\item Text being item content
```
> [!NOTE]
> __Commands, macros, and declarations__
> 
> Most LaTex commands, including those we define ourselves, consist of other commands. That's why LaTeX commands are also called __macros__, and the terms _macro_ and _command_ are used interchangeably. A command or macro the doesn't print something but just changes current settings, such as the font shape or text alignment, is also called a __declaration__.

## Understanding LaTeX Environments
Environment is a special type of command. LaTeX environments start with `\begin` and end with `\end`. Both commands require the name of the environment as their argument.

General environment structure is as following:
```tex
\begin{environmentname}[optional argument]{main argument}
  ...
\end{environmentname}
```
Some environments take arguments and optional arguments, like commands. For example
```tex
\begin{tabular}[table position]{column specifications}
 table content
\end{tabular}
```
---
## The preamble of a document
The preamble in a LaTeX document is the space between the `\documentclass` and `\begin{document}` commands where you define the document class, include packages, specify properties, set page layout, and define custom commands. For example:
```tex
\documentclass[12pt, a4paper, twoside]{article}
\usepackage[utf8]{inputenc}
\usepackage[margin=1in]{geometry}
\usepackage{hyperref}
\newcommand{\mycommand}[1]{\textcolor{red}{#1}}
```
> [!NOTE]
> In this section of the text file you will tell LaTeX about all the tools that you need to use:
> - Packages
> - Commands
> - Files

## The main body of the document
The body of the document should be placed between the `\begin{document}` and `\end{document}` commands, anything after the `\end{document}` command will be ignored.
```tex
\documentclass[12pt, a4paper, twoside]{article}
\usepackage[utf8]{inputenc}
\usepackage[margin=1in]{geometry}
\usepackage{hyperref}
\newcommand{\mycommand}[1]{\textcolor{red}{#1}}

% start main body of document
\begin{document}
This is my first document in LaTeX.
\end{document}
% end main body of document
```

## Top Matter
The LaTeX engine defines the document and author information as Top Matter. Although there does not exist any command as such `\topmatter`, the top matter includes document information like title, date, and author information like name, email, etc.
A standard article will begin with a document title, followed by author names and addresses. The code to obtain these are:
```tex
\begin{document}
\title{Title of the document}
\author{Donald Knuth and Leslie Lamport \cr
{Address of Authors}
\date{\today}
\maketitle
\end{document}
```
Here, `\cr` is used for breaking the line after the names in `\author`. The document date can be simply changed by writing the date in it, for example, `\date{30 August 2021}`, or the date can be ignored by leaving its content empty, i.e., \date{}.

## Comments in LaTeX
### Sinngle line comment in LaTeX
In case of single-line comment, you need to use percent symbol `(%)`.
```tex
% This is a multiline comment in LaTeX
% You can use the % symbol at the beginning of each line
\documentclass{article}
\begin{document}
\noindent Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium nibh turpis. Donec nec magna neque. Pellentesque metus urna, volutpat at risus et, euismod hendrerit ex. Vestibulum semper quis metus in pretium.

% The following lines are commented out
% This is line 1 of the comment
% This is line 2 of the comment
% This is line 3 of the comment

\end{document}
```
### Multi-line comments in LaTeX
___Using `iffalse` and `fi` commands___

`\iffalse` and `\fi` commands can be used to create a block comment. Anything between `\iffalse` and `\fi` will be ignored by the compiler.
```tex
\documentclass{article}
\begin{document}
\noindent Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium nibh turpis. Donec nec magna neque. Pellentesque metus urna, volutpat at risus et, euismod hendrerit ex. Vestibulum semper quis metus in pretium.

\iffalse
    This is a multiline comment in LaTeX.
    You can use \iffalse and \fi to comment out multiple lines.
    These lines will be ignored during compilation.
\fi

\end{document}
```

___Use comment package___

`comment` package provides a convenient way to create block comments. But, Remember to include the `\usepackage{comment}` line in preamble of your document.
```tex
\documentclass{article}
\usepackage{comment}
\begin{document}
\noindent Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin finibus vestibulum feugiat. Phasellus a enim aliquet, cursus magna ut, bibendum tellus. Integer nibh magna, sollicitudin at dui quis, ullamcorper varius leo. \\[6pt]

\begin{comment}
    This is a block comment using the comment package.
    You can include as many lines as you want in this block,
    and they will be ignored during compilation.
\end{comment}

\noindent Nulla malesuada facilisis dui, quis auctor ante facilisis convallis. Ut bibendum luctus massa, a molestie arcu tempor id. Maecenas faucibus congue eros ac convallis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Cras vel purus odio. 
\end{document}
```
---
## Text Effects
If you want to emphasise text, you can use the `\emph{}` command, which will emphasise the text in between the curly brackets, usually by putting it in italics. You can also specify this and other effects more directly:
- `\emph{}` emphasises text (usually italicised)
- `{\em some_text }` also emphasises text (usually italicised) but note the different placing of brackets!
- `{\bf some_text }` emboldens text but note the different placing of brackets!
- `\textrm{}` sets text in the `normal Roman font`
- `\textit{}` sets text in `italic` typeface
- `\textbf{}` sets text in `bold` typeface
- `\texttt{}` sets text in the `typewriter font family`, fixed-width fount
- `\textsc{}` sets text in the `small capitals` typeface; everything will be in uppercase, but any capital letters will be typeset slightly bigger than the normal letters
- `\textnormal{}` sets text in the `document font family`
- `\textsf{}` sets text in the `sans sefiffont family`
- `\textup{}` sets text in the `upright shape`
- `\textsl{}` sets text in the `slated shape`
- `\textmd{}` sets text in the `normal weight and width`

### Paragraph Alignment

| Alignment         | Environment        | Command           |
| :---------------- | :----------------: | :---------------- |
| Left justified    | flushleft          | \raggedright      |
| Right justified   | flushright         | \raggedleft       |
| Center            | center             | \centering        |

## List structures
List often appear in documents, especially academic, as their purpose is often to present information in a clear and concise fashion. List structures in LaTeX are simply environments which essentially come in three flavours: itemize, enumerate and description.

All list follow the basic format:
```tex
\begin{list_type}
  \item The first item
  \item The second item
  \item The third item etc \ldots
\end{list_type}
```
### Itemize
This environment is for your standard bulleted list of items
```tex
\begin{itemize}
  \item The first item
  \item The second item
  \item The third etc \ldots
\end{itemize}
```
#### Enumerate
The enumerate environment is for ordered lists, where by default, each item is numbered sequentially.
```tex
\begin{enumerate}
  \item The first item
  \item The second item
  \item The third etc \ldots
\end{enumerate}
```
### Description
The description environment is slightly different. You can specify the item label by passing it as an optional argument (although optional, it would look odd if you didn't include it!). Ideal for a series of definitions, such as a glossary.
```tex
\begin{description}
  \item[First] The first item
  \item[Second] The second item
  \item[Third] The third etc \ldots
\end{description}
```
### Nested List
LaTeX will happily allow you to insert a list environment into an existing one (up to a depth of four). Simply begin the appropriate environment at the desired point within the current list. LaTeX will sort out the layout and any numbering for you.
```tex
\begin{enumerate}
  \item The First item
  \begin{enumerate}
    \item Nested item 1
    \item Nested item 2
  \end{enumerate}
  \item The second item
  \item The thirds etc \ldots
\end{enumerate}
```
---
## Fonts in Documents
```tex
\documentclass[12pt]{article}
\usepackage{fontspec}
 
\setmainfont{Times New Roman}
\title{Sample font document}
\author{dghuuloc}
\date{\today}
   
\begin{document}
\maketitle

\setmainfont{Times New Roman}
Sử dụng Font Times New Roman cho việc gõ tiếng Việt
     
This is an \textit{example} of a document compiled 
with \textbf{LuaLaTeX}.

\setmainfont{Latin Modern Sans}
How to use latin Modern Sans Fonts

\end{document}
```
```tex
\documentclass[a4paper, 12pt]{article}
\usepackage[utf8]{inputenc}

\usepackage[main=vietnamese, english]{babel}
% \usepackage[T5]{fontenc}
% \usepackage[utf8]{vietnam}

\title{Sample font document}
\author{dghuuloc}
\date{\today}
   
\begin{document}
\maketitle

Hà Nội là thủ đô, đồng thời là thành phố đứng đầu Việt Nam về diện
tích tự nhiên và đứng thứ hai về diện tích đô thị sau thành phố Hồ Chí
Minh.

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

---
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

---
## LaTeX's other commands
* `\& for & \% for %` for special characters use `\` other examples are # { $ _ " '
* `\t{00}` `\AA` `\0e` `\day` `\pound` `\copyright` `\pi` `\Pi`
* `$...$` to insert inline formulas
* `$$...$$` to insert center justified formulas
* `\begin {array}`
* `^ {}` for super scripts
* `- {}` for sub scripts
* `\begin {eqharray} enter equation here \end {eqharray}`
* `\nonumbe` use this in above statement to skip numbering of equation
* `\begin {figure}`
* `\begin {minipage}`
* `\input {path}` to import files
* `\VSpace {-0.5cm}`
* `\begin {aligh}`
* `\begin {aligh*}`
* `\begin {tabular} {# of col, alignment, vertical yes/no}`
* `\hline`
* `\cline {column start - column end}`
* `\begin {table}` this contains tabular as child element
* `\caption { }`
* `\label { }`

---
## References
- [LaTeX Quickstart](https://www.texready.ir/docs/quickstart)
- [Learn LaTeX — A Beginner's Step-By-Step Guide](https://typeset.io/resources/learn-latex-beginners-step-by-step-guide/)
- [UTF-8](https://tex.stackexchange.com/questions/507109/how-can-i-use-utf-8vietnamese-in-equation-environment)
- [Foreign language](https://tex.stackexchange.com/questions/644783/table-captions-default-to-foreign-language)

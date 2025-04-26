# <p align="center"> Introduction to LaTeX </p>
---
## First Document `minimal-report.tex`
```tex
% Preamble starts with document type
\documentclass[a4paper,10pt]{report}

% Information
\title{Title of the report}
\author{Author Name}
\date{\today}

%Start the document
\begin{document}

% Title is automatically generated
\maketitle

% Content of the document

% Finish the document
\end{document}
```
* More specialized templates can be provided in a `.cls` file
* `10pt`, `11pt`, `12pt`: Sets the size of the main font in the document. If no option is specified, 10pt is assumed.
* `a4paper`, `letterpaper`: Defines the paper size.
* `titlepage`, `notitlepage`: Specifies whether a new page should be started after the document title or not.
* `twocolumn`: Instructs LaTeX to typeset the document in two columns instead of one.
* `twoside`, `oneside`: Specifies whether double or single sided output should be generated.
* `landscape`: Changes the layout of the document to print in landscape mode.

---
## Preamble
Between the document class and `\begin{document}` is the **preamble**.<br/>
You can import **packages** there where you can tune the appearance of your document.<br/>
For example, if you use non-ASCII characters (ß, ü...), you need to tell LATEX{} to use the UTF-8 encoding:<br/>
`\usepackage[T1]{fontenc}`<br/>
`\usepackage[utf8]{inputenc}`<br/>
You can also change the font if you do not like the default Computer Modern:<br/>
`\renewcommand*\rmdefault{ppl} % Palatino`
or:
`\usepackage{times} % Times New Roman`

---
## Basic formatting
* You can use **bold**, _emphasized_ or _italic_ and typewrite font faces: `\textbf{bold}`, `\emph{emphasized}`, `\textit{italic}`, and `\texttt{typewriter}` font faces.
* Paragraphs are separated by a blank line. `\\` represents a line break

---
## Font size
* You can locally change the size of the font with the following commands (increasing sizes): `\tiny \scriptsize \footnotesize \small \normalsize \large \Large \LARGE \huge \Huge`

---
## Line spacing
* The default line spacing is single, which looks too "compressed" for reports.
* A better value is the one-and-a-half line spacing. It simply has to be declared in the preamble:
``` tex
\usepackage{setspace}
%\singlespacing
\onehalfspacing
%\doublespacing
%\setstretch{1.1}
```

---
## Margins
* The default margins of a LATEX{} document are too wide. You can import the geometry package to reduce them:
```tex
\usepackage{geometry}
```
* You can also provide a value (here one inch) to control them:
```tex
\usepackage[margin=1in]{geometry}
```
* or even control the top/left/right/bottom margins individually:
```tex
\usepackage[top=0.5in,left=1in,right=1in,bottom=0.5in]{geometry}
```

---
## Text alignment
* By default, paragraphs are justified (which is good), with automatic hyphenation of long words.
* If you need to center or left-align some text, you can use environments (but no hyphenation):
```tex
\begin{center}
  This text will be centered horizontally on the page.
\end{center}

\begin{flushleft}
  This text will be aligned to the left.
\end{flushleft}

\begin{flushright}
  This text will be aligned to the right.
\end{flushleft}
```

---
## Structuring a document
* It depends on the document class: letters have nothing, articles and beamer slides do not have chapters, reports, books and memoirs do. (If you do not want to give a number to the section, add a `*`)
```tex
\chapter{Introduction}
\chapter{Related Work}
  \section{Classical approach}
  \section{Deep learning approach}
    \subsection*{Fully-connected networks}
    \subsection*{Convolutional networks}
    \subsection*{Recurrent networks}
\chapter{Methods}
  \section{Neural networks}
    \subsection{Architecture}
    \subsection{Training procedure}
  \section{Evaluation}
\chapter{Results}
\chapter{Discussion}
```

---
## Table Of Contents


---
## Labels and references
* You can reference a section in the text by using `\ref` and `\label`:
```tex
\chapter{Introduction}
  As we will see in section \ref{sec:training}, we...
...
\chapter{Methods}
  \section{Neural Networks}
    \subsection{Architecture}
    \subsection{Training procedure}
      \label{sec:training}
  \section{Evaluation}
...
```
> [!NOTE]
> Labels have to unique. They correspond to the current level in the hierarchy.
> You will have to compile the sourece twice to get the right references.

---
## Language
* You will have noticed that words such as "Chapter", "Contents", and so on, are written in English.
* If you write in German, make sure you import the `lable` package and configure it to German:
```tex
\usepackage[german]{babel}
```

---
## Figures and Images
* Images (png, jpg, pdf) can be included in figures:
```tex
\usepackage[graphicx}
...
\begin{figure}
  \centering
  \includegraphicc[width=0.6\textwidth]{images/alexnet.png}
  \caption{AlexNet.\label{fig:alexnet}}
\end{figure}
```
* You can specify its width (relative to the page width or absolute in mm/in), its height, its orientation and so on.
* The caption will be automatically numbered.
* If you add a label to the caption, you can cite the figure with `\ref`:
```tex
As depicted on Fig. `\ref{fig:alexnet}
```

---
# Lists and enumerations
* Lists are possible with the `itemize` environment.
* Enumerations with the `enumerate` environment. Numbers are generated automatically.
* They can be nested.
```tex
\begin{enumerate}
  \item The first things to consider are:
    \begin{itemize}
      \item this;
      \item that;
      \item that also;
`    \end{itemize}
  \item Then one should take:
    \begin{itemize}
      \item this;
      \item that.
    \end{itemize}
    into account.
\end{enumerate}
```

---
## Mathematical Equations

---
## References














\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{e61-research-note}
          [2023/05/04 v1 e61 Institute]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax

\LoadClass[10pt,twoside]{book}

\RequirePackage[paperwidth=338.7mm,paperheight=190.5mm,
top=25mm,bottom=12mm,left=20mm,right=20mm,%showframe,
%headsep=8mm,
footskip=7mm,%headheight=40pt,
marginparwidth=0in]{geometry}
\setlength{\columnsep}{19mm}

\RequirePackage[T1]{fontenc}
\RequirePackage[no-math]{fontspec}
%
\setmainfont{PTSans-Regular.ttf}[Path=./fonts/,
BoldItalicFont=PTSans-BoldItalic.ttf,
BoldFont      =PTSans-Bold.ttf,
ItalicFont    =PTSans-Italic.ttf]

\RequirePackage[italic]{mathastext}%math font

\newfontfamily{\Bebas}{FontsFree-Net-BebasNeue-Regular.ttf}[Path=./fonts/]
\newfontfamily{\Caption}{Arial}

\RequirePackage[english]{babel}
%
\RequirePackage[all]{nowidow}
\RequirePackage{rotating}
\RequirePackage{float}
\RequirePackage{ifthen}
\RequirePackage{booktabs}
\RequirePackage[table]{xcolor}
\RequirePackage{wrapfig}
\RequirePackage{pifont}
\newcommand{\cmark}{\ding{51}}%
\newcommand{\xmark}{\ding{55}}%
\RequirePackage{siunitx}
\sisetup{group-digits=integer,
            table-align-text-pre=false,
            table-align-text-post=false,
input-symbols		= ( ) [ ] - + *,
        }
\def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}
\RequirePackage{microtype}
\RequirePackage{placeins}
\RequirePackage{amsmath}
\RequirePackage{setspace}

\RequirePackage[%
backend=biber, natbib=true, style=apa, ]{biblatex}
\renewcommand*{\bibfont}{\normalfont\small}
\setlength\bibitemsep{0.33\baselineskip}
\RequirePackage{csquotes}

\RequirePackage{subcaption}
\DeclareCaptionFont{ninept}{\fontsize{10pt}{11}\selectfont \Caption}
\DeclareCaptionLabelFormat{r-parens}{#2}
\captionsetup[figure]{labelfont={bf,ninept},labelsep=colon,
belowskip=0pt,aboveskip=0pt,
justification=centering,singlelinecheck=false,font={bf,ninept}}
\captionsetup[table]{skip=8pt,labelfont={bf,ninept},labelsep=colon,
justification=centering,singlelinecheck=false,font={bf,ninept}}
%%
\captionsetup[subfigure]{labelformat=r-parens, labelsep=colon,
labelfont=bf,
font={bf,footnotesize},justification=centering,belowskip=0pt,aboveskip=6pt}
\renewcommand{\thesubfigure}{\Alph{subfigure}}

\definecolor{green0}{RGB}{37,74,83}
\definecolor{green1}{RGB}{0,47,58}
\definecolor{green3}{RGB}{27,53,97}
\definecolor{tablecol}{RGB}{77,178,181}
\definecolor{boxback}{RGB}{236,249,250}

\parindent=0pt
\parskip=6pt plus 2pt minus 2pt

\AtBeginDocument{%
  % Adjust equation spacing
  \addtolength\abovedisplayskip{-1\baselineskip}
  \addtolength\belowdisplayskip{-1\baselineskip}
}

\RequirePackage{mdframed}
\mdfdefinestyle{box1}{%
    linecolor=black,
    outerlinewidth=1pt,
    %roundcorner=20pt,
    innertopmargin=1\baselineskip,
    innerbottommargin=2\baselineskip,
    innerrightmargin=20pt,
    innerleftmargin=20pt,
    align=center,
    backgroundcolor=white}

\RequirePackage{graphicx}
\graphicspath{{./figures/}}
\RequirePackage{soulutf8}
\RequirePackage{xurl}
\urlstyle{same}

\RequirePackage{enumitem}
\setlist[enumerate]{nosep,label=\arabic*.,itemsep=4pt,labelindent=!, leftmargin=*,
labelsep=3pt, before={\vspace{0\baselineskip}},align=left,after={\vspace{0.5\baselineskip}}}
\setlist[itemize,1]{nosep,itemsep=2pt,labelindent=!, leftmargin=*,%10mm,
before={\vspace{0.25\baselineskip}},after={\vspace{0.1\baselineskip}}}

\RequirePackage{tikzpagenodes}
\RequirePackage{tikz}
\usetikzlibrary{tikzmark,positioning,fit,calc}
\usetikzlibrary{external}

\RequirePackage{calc}
\RequirePackage{array}
\def\mylengtht{\textwidth-2\tabcolsep-1.25\arrayrulewidth}
\def\mylengthc{\columnwidth-2\tabcolsep-1.25\arrayrulewidth}
\RequirePackage[explicit]{titlesec}%
\setcounter{secnumdepth}{2}
\setcounter{tocdepth}{2}

\titleformat{\chapter}[display]{\thispagestyle{e61-research-note}\raggedright\color{green1}}{}{0pt}%
{\fontsize{25}{32}\selectfont#1~\thechapter}[]
\renewcommand\thechapter{}

\titlespacing*{\chapter}{0pt}{-52pt plus 6pt}{10pt plus 6pt minus 6pt}

\RequirePackage{multicol}

\titleformat{name=\chapter,numberless}{\thispagestyle{e61-research-note}}{}{0pt}%
{%
\begin{tikzpicture}[remember picture,overlay]
%\draw[green](current page text area.north west)rectangle(current page text area.south);
%\node[anchor=north west,draw=red,rectangle,minimum width=0.5\textwidth,
%minimum height=\textheight](RR)at(current page text area.north west){};
\node[anchor=west,text width=\columnwidth,outer sep=0pt,inner sep=0pt,
font={\fontsize{30pt}{30}\selectfont},align=left](CH)
at ($(current page text area.north west)!0.45!(current page text area.south west)$){\color{green1}#1};
\draw[line width=1.5pt,black!30]([yshift=-2mm]$(current page text area.north west)!0.48!(current page text area.north east)$)--
([yshift=2mm]$(current page text area.south west)!0.48!(current page text area.south east)$);
\end{tikzpicture}}[\newpage]

\titlespacing*{name=\chapter,numberless}{0pt}{0.4\textheight}{0.4\textheight}


\addto\captionsgerman{% Replace "english" with the language you use
  \renewcommand{\contentsname}%
    {Contents}%
}

\titleformat{\section}
  {\color{black!90}\fontsize{12pt}{14pt}\selectfont\bfseries}
  {\thesection}%
  {0em}
  {#1}
  []
\renewcommand\thesection{}

\titlespacing*{\section}
{0mm}{12pt plus 2pt minus 3pt}{1pt plus 1pt minus 1pt}[0pc]


\titleformat{\subsection}
  {\color{black}\fontsize{12pt}{14pt}\selectfont\itshape}
  {\thesubsection}%
  {0em}
  {#1}
  []
\renewcommand\thesubsection{}

\titlespacing*{\subsection}
{0mm}{24pt plus 2pt minus 3pt}{0pt plus 0pt minus 0pt}[0pc]


\titleformat{\subsubsection}
  {\color{black}\fontsize{11pt}{13pt}\selectfont\bfseries}
  {\thesubsubsection}%
  {0em}
  {#1}
  []

\titlespacing*{\subsubsection}
{0mm}{12pt plus 2pt minus 3pt}{0pt plus 0pt minus 0pt}[0pc]

\titleformat{\paragraph}
  {\color{black!70}\fontsize{10pt}{11pt}\selectfont\bfseries}
  {\theparagraph}%
  {0em}
  {#1}
  []

\titlespacing*{\paragraph}
{0mm}{12pt plus 2pt minus 3pt}{1pt plus 1pt minus 1pt}[0pc]

\renewcommand{\thesubsubsection}{}%\thesubsection.\arabic{subsubsection}}

%----------------------------------------------------------------------------------------
%	TITLE
%----------------------------------------------------------------------------------------

\newcommand{\SubTitle}[1]{\def\@SubTitle{#1}}
\newcommand{\imagesource}[1]{{\parskip=0pt\baselineskip=13pt\fontsize{7pt}{9}\selectfont\par #1}}
% ---------------------------------------------------------------------
\renewcommand{\maketitle}{%
		\thispagestyle{empty}
\begin{tikzpicture}[remember picture,overlay]
%%%
\node[anchor=north west,rectangle,
minimum width=144mm,minimum height=\paperheight,
fill=green0]
(GB)at (current page.north west){};
%%figure
\node[anchor=north east,inner sep=0]
(FIG)at (current page.north east){\includegraphics[width=195mm,height=\paperheight]{title_figure}};
%%%%%%TITLE
\node[text width=115mm,inner sep=0pt,align=flush left,
anchor=west,font={\color{white}\fontsize{43pt}{53}\selectfont\Bebas}](TIT)
at ([xshift=20mm,yshift=10mm]current page.west){\MakeUppercase{\@title}};
%%%%%%SUBTITLE
\node[text width=115mm,inner sep=0pt,align=flush left,
anchor=west,font={\color{white}\fontsize{20pt}{23}\selectfont},
](STIT)at ([xshift=20mm,yshift=25mm]current page.south west)
{\@SubTitle};
\end{tikzpicture}
}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancypagestyle{e61-research-note}{%
\renewcommand{\headrulewidth}{0pt}
  \fancyhf{}%
\fancyhead{\begin{tikzpicture}[remember picture,overlay]%draw=red,
\node[anchor=north west,rectangle,
minimum width=\paperwidth,minimum height=3mm,
fill=green0](HH)at (current page.north west){};
\end{tikzpicture}}
%
\fancyfoot{%
\begin{tikzpicture}[remember picture,overlay]
\node[anchor=west,black!40,font={\fontsize{10pt}{10}\selectfont\bfseries},inner xsep=0pt]
at([xshift=5mm]current page footer area.south east) {\textcolor{black!40}{\thepage}};
\node[anchor=east,green3,font={\fontsize{9pt}{9}\selectfont},inner xsep=0pt]
at([yshift=0mm]current page footer area.south east) {\@title};
\end{tikzpicture}}
}

\fancypagestyle{first}{%
\renewcommand{\headrulewidth}{0pt}
  \fancyhf{}%
\fancyhead{\begin{tikzpicture}[remember picture,overlay]%draw=red,
\node[anchor=north west,rectangle,
minimum width=\paperwidth,minimum height=3mm,
fill=green0](HH)at (current page.north west){};
\end{tikzpicture}}
%
\fancyfoot{%
\begin{tikzpicture}[remember picture,overlay]
\node[anchor=east,inner xsep=0pt]
at([yshift=0mm]current page footer area.north east) {\includegraphics[scale=1.0]{e61_logo}};
\end{tikzpicture}}
}

\RequirePackage[colorlinks,allcolors=blue]{hyperref} %

\renewcommand{\thefigure}{\arabic{figure}}
\renewcommand{\thetable}{\arabic{table}}
\renewcommand{\theequation}{\arabic{equation}}

\RequirePackage[many]{tcolorbox}
\newtcolorbox[auto counter,%number within=chapter,
number freestyle={\noexpand\arabic{\tcbcounter}}]{Boxx}[2][]{%
  enhanced, breakable,
detach title, before upper={\fontsize{10pt}{13}\selectfont}, colframe=green3,
attach boxed title to top center={yshift=-\tcboxedtitleheight,yshifttext=-5mm},
colupper=black,colback=boxback, boxed title style={empty}, coltitle=black,
fonttitle=\bfseries,center title, left=0mm,right=0mm,
top=0mm,bottom=0mm,boxsep=2mm,arc=0mm, boxrule=1.5pt,
%title=#2,
title=Box~\thetcbcounter\ifx\hfuzz#2\hfuzz\else:~~#2\fi,
#1 }

\RequirePackage{footmisc}%[perpage]
\enlargethispage{\baselineskip}
\interfootnotelinepenalty=100000
%\interfootnotelinepenalty=\@M
%\widowpenalty-10000

\setlength{\footnotesep}{9pt}
\setlength{\skip\footins}{5mm} %<------------ add this
\renewcommand{\footnoterule}{%
\ifnum\value{page}=2
\else
  \kern -3pt
  \hrule width 0.2\textwidth height 0.5pt
  \kern 5pt
  \fi}

%\@addtoreset{footnote}{page}
\long\def\@makefntext#1{\parindent 1em\noindent
    \normalfont\@thefnmark~#1}% 

\renewcommand{\thefootnote}{\arabic{footnote}}

%--------------------------
%ABSTRACT
%---------------------------
\providecommand\Aabstractname{Summary}
\def\abstract{}
\def\endabstract{}
\renewenvironment{abstract}{\renewcommand{\thefootnote}{\fnsymbol{footnote}}\newpage\thispagestyle{first}%
%\begin{minipage}{1\textwidth}
\centering {\baselineskip=15\p@\fontsize{16pt}{22}\selectfont\@title}
\par\vskip 0.95\baselineskip
\centering {\fontsize{13pt}{14}\selectfont Author:~\@author}
\par\vskip 0.5\baselineskip
%\hfill{\color{black!70}\vrule}\hfill
  \list{}{\leftmargin0mm \rightmargin\leftmargin\fontsize{12pt}{16}\selectfont}
  \item\relax
}{%
  \endlist%\end{minipage}
  \par\bigskip
}





%\definecolor{linija}{cmyk}{0,0,0,0}
%\setlength{\columnseprule}{1pt}
\RequirePackage{etoolbox}
%\pretocmd{\footnoterule}{\pgfmark{footrule\thepage}}{}{FAILED}

\RequirePackage{chngcntr}
\counterwithout{figure}{chapter}
\counterwithout{table}{chapter}
\counterwithout{footnote}{chapter}

\def\@schapter#1{\if@twocolumn
                   \@makeschapterhead{#1}%\@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi}

\renewenvironment{thebibliography}[1]
     {\begin{multicols}{2}[\chapter*{\refname}]\end{multicols}%
     %{\chapter*{\refname}%
      \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}

%%%%
%APPENDIX
%%%%%

\let\oldappendix\appendix
\renewcommand{\appendix}{%
\setcounter{figure}{0}\setcounter{table}{0}%
\counterwithin{figure}{chapter}%
\counterwithin{table}{chapter}%
  \oldappendix
\renewcommand\thechapter{\Alph{chapter}}%
\def\@chapter[##1]##2{\refstepcounter{chapter}%
                      \if@twocolumn
                      %\@topnewpage[\@makechapterhead{##2}]%
                       \@makechapterhead{##2}%
                      %\@afterheading
                    \else
                      \@makechapterhead{##2}%
                      \@afterheading
                    \fi}
\newcommand{\section@cntformat}{\thesection\quad}%\appendixname~
\renewcommand\thefigure{\thechapter.\arabic{figure}}%
\def\@makechapterhead##1{\thispagestyle{e61-research-note}%
  \vspace*{-60\p@}%
  {\raggedright
    %\ifnum \c@secnumdepth >\m@ne
      %\if@mainmatter
        %\huge\bfseries \@chapapp~\thechapter
        \fontsize{25}{32}\selectfont\textcolor{green1}{Appendix~\thechapter}
        \par\nobreak
        \vskip 7\p@
      %\fi
    %\fi
    \interlinepenalty\@M
    \fontsize{18}{22}\selectfont\color{black}##1\par\nobreak
    \vskip 10\p@
  }}
}
\endinput

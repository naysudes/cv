\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cutecv} % [2018/09 feldsherov cute cv class]

% Use article class as the base class.
\LoadClass{article}

\RequirePackage{fontspec}
\setmainfont[
   ItalicFont     = HelveticaNeue-Italic,
   BoldFont       = HelveticaNeue-Bold,
   BoldItalicFont = HelveticaNeue-BoldItalic]{HelveticaNeue}
\newfontfamily\HLight[
   ItalicFont     = HelveticaNeue-Italic,
   BoldFont       = HelveticaNeue-UltraLight,
   BoldItalicFont = HelveticaNeue-UltraLightItalic]{HelveticaNeue-Light}

% Horisontal aligment package
\RequirePackage{ragged2e}


\RequirePackage{paracol}

% Geometry package for page margins.
\RequirePackage[
left=20mm,
right=20mm,
top=20mm,
bottom=20mm,
nohead,
includefoot]{geometry}

% Geometry paper
\geometry{a4paper}

% Turn off page numbers
\pagenumbering{gobble}

% Vertical skip lengthis
\newlength{\cvsectionverticalskip}
\setlength{\cvsectionverticalskip}{4mm}

\newlength{\cvinfoverticalskip}
\setlength{\cvinfoverticalskip}{4mm}

\DeclareOption{onecolumn}{\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Contacts variable
\newcommand\contacts[1]{\def\@contacts{#1}}

\renewcommand{\maketitle}{%
  \centering {\fontsize{30}{40}\selectfont\@author} \\
  \centering {\HLight\fontsize{12}{14}\selectfont \@contacts} \\
  \hrulefill
  \medskip
}


\newenvironment{cvsection}[1] {
  \begin{flushleft}
  {\HLight\fontsize{15}{25}\selectfont
    \textbf{\addfontfeature{LetterSpace=7.0}{#1}}\\ }
  \vspace{\cvsectionverticalskip}
}
{\end{flushleft}}

\newcommand{\cvinfobox}[3]{
  #1 \\
  \if #2\empty \else
    {\HLight #2 \\}
  \fi
  \if #3\empty \else
  {\HLight\selectfont\textbf{\addfontfeature{LetterSpace=7.0}#3} \\}
  \fi
  \vspace{\cvinfoverticalskip}
}


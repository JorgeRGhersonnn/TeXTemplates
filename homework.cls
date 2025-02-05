% Base Class
\LoadClass[11pt]{article}

% Packages
\RequirePackage[utf8]{inputenc}
\RequirePackage{amsmath, amssymb, amsthm}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{hyperref}
\RequirePackage{xcolor}

% Page Layout
\geometry{a4paper, margin=1in}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\thepage}

% Theorem-like Environments
\newtheoremstyle{mystyle}%
  {1em}   % Space above
  {1em}   %   ^   below
  {\itshape} % Body font
  {0.5em}       % Indent amount
  {\bfseries} % Thm. head font
  {}      % Punctuation after Thm. head
  { }      % Space after Thm. head
  {\thmname{#1}\thmnumber{ #2}\thmnote{ (#3)}} % Thm. head spec

\theoremstyle{mystyle}
\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{definition}[theorem]{Definition}
\newenvironment{problem}[2][Problem]{\begin{trivlist}
\item[\hskip \labelsep {\bfseries #1}\hskip \labelsep {\bfseries #2.}]}{\end{trivlist}}
\newenvironment{answer}[2][Answer]{\begin{trivlist}
\item[\hskip \labelsep {\bfseries #1}\hskip \labelsep {\bfseries #2.}]}{\end{trivlist}}

% Proofs
\renewcommand{\proofname}{Proof}

% Metadata
\newcommand{\authorname}[1]{\renewcommand{\@author}{#1}}
\newcommand{\titletext}[1]{\renewcommand{\@title}{#1}}
\newcommand{\datetext}[1]{\renewcommand{\@date}{#1}}

% Title Page
\renewcommand{\maketitle}{%
    \begin{center}
        {\LARGE \bfseries \@title}\\[1em]
        {\large \@author}\\[0.5em]
        {\@date}
    \end{center}
    \vspace{0.5em}
}

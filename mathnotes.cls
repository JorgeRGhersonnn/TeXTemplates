\ProvidesClass{mathnotes}[Mathematics Notes Class]

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
\fancyhead[L]{MATH280 - Logic, Sets, and Proofs}

% Custom Commands
\newcommand{\lecture}[3]{%
    \section*{Lecture #1: #2}%
    \textbf{Date:} #3%
    \vspace{0.5em}%
}

\newcommand{\topic}[1]{%
    \subsection*{Topic: #1}%
}

% Theorem-like Environments
\newtheoremstyle{mystyle}%
  {1em}   % Space above
  {1em}   % Space below
  {\itshape} % Body font
  {0.5em}       % Indent amount
  {\bfseries} % Theorem head font
  {}      % Punctuation after theorem head
  { }      % Space after theorem head
  {\thmname{#1}\thmnumber{ #2}\thmnote{ (#3)}} % Theorem head spec

\theoremstyle{mystyle}
\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{exercise}[theorem]{Exercise}

% Proof Environment
\renewcommand{\proofname}{Proof}

% Metadata
\newcommand{\authorname}[1]{\renewcommand{\@author}{#1}}
\newcommand{\titletext}[1]{\renewcommand{\@title}{#1}}
\newcommand{\datetext}[1]{\renewcommand{\@date}{#1}}

% Title Page
\renewcommand{\maketitle}{%
    \begin{center}
        {\Huge \bfseries \@title}\\[1em]
        {\large \@author}\\[0.5em]
        {\@date}
    \end{center}
    \vspace{2em}
}

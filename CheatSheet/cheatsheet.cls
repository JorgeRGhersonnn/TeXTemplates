\LoadClass[10pt]{article}

\usepackage[framemethod=TikZ]{mdframed}
\usepackage{amsthm}
\usepackage[landscape]{geometry}
\usepackage{multicol}
\usepackage{tikz}
\usepackage{pgfplots}
\usepackage{xcolor}
\usepackage{amsmath}
\usepackage[T1]{fontenc}
\usepackage{utopia}
\usepackage{changepage}
\usepackage{amssymb}
\usepackage{fancyhdr}
\usepackage[many]{tcolorbox}
\usepackage{moresize}
\usepackage{fullpage}
\usepackage{mathpazo}
\usepackage{tikz-3dplot}
\usepackage{cancel}
\tdplotsetmaincoords{70}{165}
\pgfplotsset{compat=1.18}

\usetikzlibrary{
    shadings, calc, patterns, angles, quotes, arrows.meta, 
    decorations.pathmorphing, decorations.pathreplacing, 
    fadings, 3d, perspective, backgrounds, intersections, 
    decorations.markings, bending
}

\tikzset{
    arrow/.style={-stealth,thick},
    node/.style={draw,thick,minimum size=6mm},
    label/.style={font=\small,inner sep=2pt},
    grid/.style={help lines,g},
    axis/.style={arrow,every node/.style={font=\small}},
    technical/.style={
        font=\small,
        tdplot_main_coords,
        anchor=center,
        inner sep=3pt
    },
    process/.style={
        scale=0.6,
        yscale=0.8,
        every node/.style={font=\small}
    },
    factor/.style={
        xscale=0.6,
        yscale=0.35,
        every node/.style={font=\small}
    }
}

\newcommand{\drawgrid}[4]{
    \foreach \x in {#1,...,#2} {
        \foreach \y in {#3,...,#4} {
            \draw[grid] (\x,\y) grid (\x+1,\y+1);
        }
    }
}

\newcommand{\drawaxes}[5]{
    \draw[#5] (0,0) -- (#1,0) node[right] {#3};
    \draw[#5] (0,0) -- (0,#2) node[above] {#4};
}

\newcommand{\drawpoint}[4]{
    \node[#4] at (#1,#2) {};
    \node[label] at (#1,#2) [right] {#3};
}

\newcommand{\drawstage}[5]{
    \draw[#1] (#2,#4) rectangle (#3,#4+1) node[midway] {#5};
}

\usepgfplotslibrary{
    groupplots, external, colormaps, patchplots, fillbetween
}

\setlength{\baselineskip}{1.2em}
\setlength{\parskip}{-0.75em}

\makeatletter
\tikzoption{canvas is xy plane at z}[]{%
    \def\tikz@plane@origin{\pgfpointxyz{0}{0}{#1}}%
    \def\tikz@plane@x{\pgfpointxyz{1}{0}{#1}}%
    \def\tikz@plane@y{\pgfpointxyz{0}{1}{#1}}%
    \tikz@canvas@is@plane}
\makeatother

% Reds (r)
\definecolor{r1}{RGB}{225, 170, 170}    % Coral
\definecolor{r2}{RGB}{230, 180, 200}    % Pink
\definecolor{r3}{RGB}{220, 170, 190}    % Rose

% Blues (b)
\definecolor{b1}{RGB}{170, 200, 230}    % Blue
\definecolor{b2}{RGB}{160, 210, 230}    % Sky
\definecolor{b3}{RGB}{160, 220, 220}    % Cyan

% Greens (g)
\definecolor{g1}{RGB}{170, 220, 170}    % Green
\definecolor{g2}{RGB}{170, 230, 200}    % Mint
\definecolor{g3}{RGB}{180, 230, 180}    % Sage

% Neutral tones
\definecolor{w}{HTML}{f8f8f8}   % Softer white
\definecolor{g}{HTML}{555555}   % Medium grey
\definecolor{b}{HTML}{333333}   % Dark grey (for text)
\definecolor{lightgrey}{HTML}{dddddd} % Light grey

\geometry{
    letterpaper,
    left=0.25in,
    right=0.25in,
    top=0.15in,
    bottom=0.25in
}

\newcommand{\hr}{\centerline{\rule{3.5in}{1pt}}}

\newcommand{\nc}[2][g]{%
\tikz \draw [draw=#1,thick]
    ($(current page.center)-(0.495\linewidth,0)$) -- 
    ($(current page.center)+(0.495\linewidth,0)$)
    node [midway, fill=w] {\ssmall\textbf{\uppercase{#2}}};
}

\newtcolorbox{conceptbox}[2][]{
	breakable,
	vfill before first=false,
	segmentation at break=false,
	size=fbox,
	colback=w,
	title=\scriptsize\textbf{\MakeUppercase{#2}},
	left=2pt,
	right=2pt,
	top=3pt,
	bottom=1pt,
	boxrule=1pt,
	coltitle=b,
	colupper=b,
	pad at break=5pt,
	toprule at break=4pt,
	bottomrule at break=0.75pt,
	colframe=#1,
	enlargepage=12in, 
	before upper*={\setlength{\baselineskip}{0.75em}\setlength{\parskip}{0em}}
}

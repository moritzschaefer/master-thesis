%
% In dieser Datei fehlen noch ein paar erklaerende Kommentare
%
\ProvidesClass{tuberlinbeamer}
\PassOptionsToPackage{ngerman}{babel}
\newcounter{deko}
\setcounter{deko}{0}
\DeclareOption{Nike}{\def\FileName{Nike}\setcounter{deko}{1}}
\DeclareOption{Haus}{\def\FileName{Haus}\setcounter{deko}{2}}
\DeclareOption{Aussicht}{\def\FileName{Aussicht}\setcounter{deko}{3}}
\DeclareOption{Leer}{\def\Filename{}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax
\LoadClass[xcolor=table,hyperref={bookmarks},9pt,t]{beamer}  % pdfpagemode=FullScreen
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{babel}
\RequirePackage[scaled]{helvet}
\RequirePackage{graphicx}
\RequirePackage{xspace}
\RequirePackage{etoolbox}

\setlength{\unitlength}{1mm}
\newlength{\rand}
\setlength{\rand}{5mm}
% 128 mm x 96 mm

\xdefinecolor{TUred}{RGB}{197,14,31}
\xdefinecolor{grau}{RGB}{113,113,113}
\setbeamersize{text margin left=\rand, text margin right=\rand}

\newcommand*{\lengthinmm}[1]{\strip@pt\dimexpr0.351459804\dimexpr#1\relax\relax}
\newcommand{\smallcirc}{\begin{picture}(2,2)\put(1,0.9){\circle*{0.9}}\end{picture}}
\newcommand{\Nike}{\def\FileName{Nike}\setcounter{deko}{1}}
\newcommand{\Haus}{\def\FileName{Haus}\setcounter{deko}{2}}
\newcommand{\Aussicht}{\def\FileName{Aussicht}\setcounter{deko}{3}}
\newcommand{\Leer}{\setcounter{deko}{0}}
\newcommand{\sehrLeer}{\setcounter{deko}{-1}}
\renewcommand{\emph}{\textbf}

\linespread{1.1}
\newcommand{\leer}{}
\newcommand{\pathtologo}{TU_Logo_lang_4c_rot}
\newcommand{\pathtomylogo}{}

\setbeamertemplate{title page}{%
	\thispagestyle{empty}
	\vspace{-\headheight}
	\hspace{-\rand}%
	\begin{picture}(100,93.6)
		\put(93,74){\includegraphics[width=30mm]{\pathtologo}}
		\put(-0.5,32){\ifnum\thedeko>0\color{TUred}\rule{\rand}{32mm}\fi}
		\put(5,32){\ifnum\thedeko>0\includegraphics[height=32mm,width=118mm]{\FileName}\fi}
		\put(5,20){\parbox[b]{112mm}{\usebeamerfont{title}\usebeamercolor[fg]{titlelike}{\fontsize{12}{14}\selectfont\inserttitle}}}
		\put(5,13){\color{grau}\fontsize{8pt}{8pt}\selectfont\insertauthor%
			\ifdefempty{\insertinstitute}{}{~|~\insertinstitute}%
			\ifdefempty{\insertsubtitle}{}{~|~\insertsubtitle}}
		%\put(5,7){\color{grau}\rule{118mm}{0.5pt}}
		\put(5,9){\ifx\pathtomylogo\leer{}\else{\color{grau}{\rule{118mm}{0.5pt}}}\fi}
		\put(5,7.5){\ifx\pathtomylogo\leer{\color{grau}{\rule{118mm}{0.5pt}}}\fi}
		\put(123,2){\ifx\pathtomylogo\leer\else{\makebox[0mm][r]{\includegraphics[height=6mm]{\pathtomylogo}}}\fi}
	\end{picture}}

\setbeamertemplate{headline}{%
		\begin{picture}(100,15)
			\put(-0.5,0){\ifnum\thedeko>0\color{TUred}\rule{\rand}{10mm}\fi}
			\put(5,0){\ifnum\thedeko>0\includegraphics[height=10mm,width=94mm]{\FileName_head}\fi}
			\put(104,0){\ifnum\thedeko>-1\includegraphics[width=19mm]{\pathtologo}\fi}
		\end{picture}}

\setbeamertemplate{frametitle}{%
	\ifnum\thedeko<0\vspace{-11mm}\fi
	\ifnum\thedeko>0%
  \vspace{2mm}\insertframetitle\vphantom{(Ag)}%
  \else%
  \vspace{-1mm}\insertframetitle\vphantom{(Ag)}%
  \fi\vspace{-2mm}}

\setbeamertemplate{footline}{%
	\begin{picture}(100,10)
	\put(5,9){\ifx\pathtomylogo\leer{}\else{\rule{118mm}{0.5pt}}\fi}
  \put(5,7.5){\ifx\pathtomylogo\leer{\rule{118mm}{0.5pt}}\fi}
	\put(5,2){\parbox[b]{95mm}{\fontsize{5pt}{6pt}\selectfont%
		\textbf{\inserttitle}~|~\insertauthor%
		\ifdefempty{\insertsubtitle}{}{~|~\insertsubtitle}\par%
		\vspace{1pt}Seite \insertframenumber\par}}
	\put(123,2){\ifx\pathtomylogo\leer\else{\makebox[0mm][r]{\includegraphics[height=6mm]{\pathtomylogo}}}\fi}
	\end{picture}}

\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{background}{}
\setbeamertemplate{itemize item}{--}
\setbeamertemplate{itemize subitem}{\smallcirc}
\setbeamertemplate{itemize subsubitem}{\frqq}

\setbeamercolor{alerted text}{fg=TUred}
\setbeamercolor{block body}{bg=grau}
\setbeamercolor{block body alerted}{bg=grau}
\setbeamercolor{block title}{bg=TUred,fg=white}
\setbeamercolor{block title alerted}{bg=TUred,fg=white}
\setbeamercolor{block title example}{bg=TUred,fg=white}
\setbeamercolor{frametitle}{fg=TUred}
\setbeamercolor{item}{fg=black}
\setbeamercolor{navigation symbols}{fg=grau}
\setbeamercolor{section in toc}{fg=TUred}
\setbeamercolor{titlelike}{fg=TUred}
\setbeamercolor{footline}{fg=grau}

\setbeamerfont{block title}{size=\normalsize}
\setbeamerfont{block title alerted}{size=\normalsize}
\setbeamerfont{block title example}{size=\normalsize}
\setbeamerfont{titlelike}{}
\setbeamerfont{title}{}
\setbeamerfont{title in head}{series=\bfseries}
\setbeamerfont{frametitle}{size=\large}
\setbeamerfont{section in toc}{series=\bfseries}

\setbeamerfont*{itemize/enumerate body}{parent=normal text}
\setbeamerfont*{itemize/enumerate subbody}{parent=itemize/enumerate body}
\setbeamerfont*{itemize/enumerate subsubbody}{parent=itemize/enumerate body}

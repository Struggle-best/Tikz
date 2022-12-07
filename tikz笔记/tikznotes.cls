\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{tikznotes}
\LoadClass[heading=true,zihao=-4,scheme = chinese,openany]{ctexart}
\RequirePackage[dvipsnames, svgnames, x11names]{xcolor} 
\RequirePackage{caption,fancyhdr,gbt7714,xeCJK,graphicx,hyperref,float,titletoc,appendix,tikz,tabularx,xparse,enumitem,listings,pgfplots,amsmath,amsthm,amssymb,amsfonts,mathpazo}
\RequirePackage[european]{circuitikz}
\usetikzlibrary {arrows.meta,3d}
\RequirePackage{tcolorbox}
\tcbuselibrary{listings,skins,listingsutf8}
\tcbuselibrary{xparse}
\RequirePackage[a4paper,left=3cm,right=2.5cm,top=3cm,bottom=2.5cm]{geometry}

%-----   全局设置   ------
\setCJKmainfont{simsun.ttc}                  %全文宋体
\setmainfont{Times New Roman}                %设置字母数字新罗马字体  
\setlength{\baselineskip}{22pt}
\setlength{\parskip}{0.2em}
\setlength{\belowdisplayskip}{-5cm} 

\pagestyle{plain} 
%-----   定制章节标题   -----
\ctexset{
	tocdepth ={subsection},
	secnumdepth ={subsubsection},
	contentsname={目\hspace{0.25cm} 录},
	listfigurename={插\hspace{0.25cm} 图},
	listtablename={ 表 \hspace{0.25cm} 格},
	bibname = {参考文献},
	section={
		fixskip=true,
		number =\arabic{section},
		numberformat=\bfseries,
		format = \heiti\zihao{-3},%\bfseries%\raggedleft
		beforeskip = 15pt,
		afterskip = 15pt
	},
	subsection={
		number =\arabic{section}.\arabic{subsection},
		numberformat=\bfseries,
		format = \heiti\zihao{4},%\bfseries %\raggedleft
		beforeskip   = 0pt,
		afterskip    = 11pt
	}
}

\DeclareCaptionFont{song}{\songti}
\DeclareCaptionFont{minusfour}{\zihao{5}}
\captionsetup[figure]{%
	format=hang,   
	labelsep=quad, %space，period，
	font={song,minusfour,bf}, 
	position=bottom,
	aboveskip=5pt,
	belowskip=-15pt	 
}
\captionsetup[table]{%
	format=hang,   
	labelsep=quad, 
	font={song,minusfour,bf}, 
	position=top,
	aboveskip=-5pt,
	belowskip=-5pt	
}

%-----   参考文献   -----
\setlength{\bibsep}{0.5ex} 


%-----   超链接   -----
\hypersetup{
	urlcolor=black,
	citecolor=black,
	linkcolor=black,
	hidelinks,
	colorlinks  = true ,
}

%-----    代码环境   -----
%\definecolor{dkgreen}{rgb}{0,0.6,0}
%\definecolor{gray}{rgb}{0.5,0.5,0.5}
%\definecolor{mauve}{rgb}{0.58,0,0.82}
%\definecolor{frenchplum}{RGB}{190,20,83}
%\lstset{
%	backgroundcolor = \color{gray!5},    % 背景色：淡黄
%	basicstyle = \small\ttfamily,           % 基本样式 + 小号字体
%	rulesepcolor= \color{gray},             % 代码块边框颜色
%	breaklines = true,                  % 代码过长则换行                  				
%	numberstyle = \small,               % 行号字体
%	keywordstyle = \color{blue},            % 关键字颜色
%	commentstyle =\color{green!100},        % 注释颜色
%	stringstyle = \color{red!100},          % 字符串颜色
%	frame = shadowbox,                  % 用（带影子效果）方框框住代码块
%	showspaces = false,                 % 不显示空格
%	columns = fixed,                    % 字间距固定
%	%escapeinside={<@}{@>}              % 特殊自定分隔符：<@可以自己加颜色@>
%	morekeywords = {as},                % 自加新的关键字（必须前后都是空格）
%}


\DeclareTotalTCBox{\myverb}{ v }{verbatim,
	on line,
	arc=3pt,colframe=red!75!black,colupper=blue,before upper={\rule[-3pt]{0pt}{12pt}},
	boxsep=1mm,left=0pt,right=0pt,top=0pt,bottom=0pt,
	boxrule=0pt,bottomrule=0.1pt,toprule=0.1pt}{#1}

\endinput
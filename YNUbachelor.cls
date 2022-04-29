% Copyright
% GitHub repository：https://github.com/Astro-Lee/YNU-thesis-bachelor
% 作者：Lee
% 邮箱：liruizhi@mail.ynu.edu.cn

\newcommand\thesisversion{v0.0.1}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{YNUbachelor}[2021/12/24 YNU-thesis-bachelor \thesisversion, liruizhi@mail.ynu.edu.cn]
\LoadClass[UTF8,a4paper,scheme=plain,zihao=-4,fontset=none]{ctexart}

%判断是否使用XeLaTeX编译
\RequirePackage{ifxetex}
\ifxetex\else
\ClassError{YNUbachelor}{必须使用 `xelatex' 编译器进行编译\MessageBreak Please choose `xelatex'}{Just choose `xelatex', no `pdflatex' or `latex' and so on.}
\fi

%页边距设置
\RequirePackage[a4paper,top=2.5cm,bottom=2.5cm,left=3cm,right=2.0cm]{geometry}

%字体设置
%设置行距的倍数为 1.25
\linespread{1.25}\selectfont

%\RequirePackage{ifplatform}
%字体下载 https://gitee.com/Astro-Lee/fonts
\RequirePackage{xeCJK}

%简体中文 宋体
\setCJKmainfont{SimSun.ttf}[AutoFakeBold=true, Path=fonts/, Mapping=fullwidth-stop]

%简体中文 黑体
\setCJKsansfont{SimHei.ttf}[AutoFakeBold=true, Path=fonts/]

%简体中文 仿宋
\setCJKmonofont{SimFang.ttf}[AutoFakeBold=true, Path=fonts/]

%英文衬线字体 Serif
\setmainfont{TimesNewRoman-Regular.ttf}[%
	Path=fonts/,
	BoldFont=TimesNewRoman-Bold.ttf,
	ItalicFont=TimesNewRoman-Italic.ttf,
	BoldItalicFont=TimesNewRoman-BoldItalic.ttf,
]

%英文无衬线字体 Sans Serif
\setsansfont{Helvetica-Regular.ttf}[%
	Path=fonts/,
	BoldFont=Helvetica-Bold.ttf,
	ItalicFont=Helvetica-Oblique.ttf,
	BoldItalicFont=Helvetica-BoldOblique.ttf,
]

%英文等宽字体 Monospace
\setmonofont{CourierNew-Regular.ttf}[%
	Path = fonts/,
	BoldFont=CourierNew-Bold.ttf,
	ItalicFont=CourierNew-Italic.ttf,
	BoldItalicFont=CourierNew-BoldItalic.ttf,
	Scale = MatchLowercase,
]

%字体格式设置
\newcommand{\daBiaoTi}{\zihao{3} \bfseries}%大标题格式设置
\newcommand{\yiCengBiaoTi}{\zihao{-3} \bfseries}%一层标题格式设置
\newcommand{\erCengBiaoTi}{\zihao{4} \bfseries}%二层及以下标题格式设置
\newcommand{\otherFontSize}{\zihao{5}}%摘要、关键词、参考文献字体格式设置

%covers封面
%https://zhuanlan.zhihu.com/p/19734756
\RequirePackage{eso-pic}%插入封面
\RequirePackage{setspace}%行距控制

\def\school#1{\gdef\@school{#1}}%定义学院
\def\@school{\@latex@warning{No \noexpand\school given}}%如果没有提供机构命令，系统将会给出警告信息

\def\studentID#1{\gdef\@studentID{#1}}%定义学号
\def\@studentID{\@latex@warning{No \noexpand\studentID given}}%如果没有提供机构命令，系统将会给出警告信息

\def\major#1{\gdef\@major{#1}}%定义专业
\def\@major{\@latex@warning{No \noexpand\major given}}%如果没有提供机构命令，系统将会给出警告信息

\def\teacher#1{\gdef\@teacher{#1}}%定义指导教师
\def\@teacher{\@latex@warning{No \noexpand\teacher given}}%如果没有提供机构命令，系统将会给出警告信息

\newcommand{\cover}{%
	\AddToShipoutPicture*{%
		\put(0,0){%
			\parbox[b][\paperheight]{\paperwidth}{%
				\vfill
				\centering
				\includegraphics[width=\paperwidth,height=\paperheight,keepaspectratio]%
				{figures/cover.pdf}
				\vfill}}
			
		\put(5.3cm,15.1cm){%
			\parbox[t][2cm][l]{31em}{\begin{spacing}{2.3}\zihao{4} \hskip 4em \@title\end{spacing}}}
		
		\put(9.7cm,11.85cm){\makebox[18em][c]{\zihao{4} \@school}}
		
		\put(9.7cm,10.45cm){\makebox[18em][c]{\zihao{4} \@author}}
		
		\put(9.7cm,9cm){\makebox[18em][c]{\zihao{4} \@studentID}}
		
		\put(9.7cm,7.55cm){\makebox[18em][c]{\zihao{4} \@major}}
		
		\put(9.7cm,6.15cm){\makebox[18em][c]{\zihao{4} \@teacher}}
		
		\put(13.55cm,3.2cm){%
			\makebox[4em][c]{\zihao{4} \number\year}\hskip1em
			\makebox[3.6em][c]{\zihao{4} \number\month}\hskip1em
			\makebox[3.6em][c]{\zihao{4} \number\day}}
	}
	\thispagestyle{empty}~\newpage
}

%封底
\newcommand{\backcover}{
	\AtEndDocument{
		\newpage~\thispagestyle{empty}
	}}	
%毕业论文（设计）独创性声明及使用授权
\newcommand{\copyrightpage}{%
	\begin{center}
		\sffamily \zihao{-2}毕业论文（设计）独创性声明及使用授权
	\end{center}\vskip 2em
	{\zihao{4}
		
		本毕业论文（设计）是作者在导师指导下取得的成果。除了文中特别加以标注和致谢的地方外，论文（设计）中不包含其他人已经发表或撰写过的研究成果，不存在剽窃或抄袭行为。与作者一同工作的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示了谢意。
		
		现就论文（设计）的使用对云南大学授权如下：学校有权保留本论文（设计）（含电子版），也可以采用影印、缩印或其他复制手段保存论文（设计）；学校有权公布论文的全部或部分内容，可以将论文（设计）用于查阅或借阅服务；学校有权向有关机构送交学位论文（设计）用于学术规范审查、社会监督或评奖；学校有权将学位论文（设计）的全部或部分内容录入有关数据库用于检索服务。
		
		\hskip 1em {\sffamily (内部或保密的论文}（设计）{\sffamily 在解密后应遵循此规定)} 
		\vskip 6em
		
		\noindent 作者姓名：\underline{\makebox[6em][c]{}} 导师姓名：\underline{\makebox[6em][c]{}}日 \hskip 1em 期：\underline{\makebox[6em][c]{}}
	}
	\thispagestyle{empty}\newpage}

%maketitle设置
\def\@maketitle{%
	\null
	\begin{center}
		{\daBiaoTi \@title}
		\vskip 1em
		{\zihao{-3} \@author}
		\vskip 1em
		{\zihao{-3} \@date}
	\end{center}
	\par
	\vskip 1em
	\pagenumbering{roman}
	
	\global\let\school\relax
	\global\let\@school\@empty
	
	\global\let\studentID\relax
	\global\let\@studentID\@empty
	
	\global\let\major\relax
	\global\let\@major\@empty
	
	\global\let\teacher\relax
	\global\let\@teacher\@empty
}%题名完成后，将系统内部和外部不再用到的的题名信息命令废止或清空，也就是说这些命令只能使用一次

%contents目录设置
%http://static.latexstudio.net/article/2019/0513/titlesec_c.pdf
\RequirePackage{titletoc}%深度定制目录

\titlecontents{section}
[0.2em]{\bfseries \vskip 1em}
{\contentslabel{1.5em}}{}
{\titlerule*[2pc]{$~$}\contentspage}

\titlecontents{subsection}
[2.2em]{}
{\contentslabel{2em}}{}
{\titlerule*[.8pc]{$\cdot$}\contentspage}

\titlecontents{subsubsection}
[5.2em]{}
{\contentslabel{3em}}{}
{\titlerule*[.5pc]{$\cdot$}\contentspage}

\newcommand{\toc}{\tableofcontents\newpage\pagenumbering{arabic}}
%ctexset设置
\ctexset{
	tocdepth=3,%目录深度
	secnumdepth=3,%section深度, 仅section, subsection, subsubsection可用
	punct=quanjiao,%全角标点
	autoindent=2,
	today=small,
	contentsname={目录},
	listfigurename={图目录},
	listtablename={表目录},
	figurename={图},
	tablename={表},
	abstractname={摘要},
	indexname={索引},
	appendixname={附录},
	bibname={参考文献},
	proofname={证明},
}

\ctexset{
	section = {	
		format = \yiCengBiaoTi,
		afterindent=true,
	},
	subsection = {	
		format = \erCengBiaoTi,
		afterindent=true,
	},
	subsubsection = {	
		format = \erCengBiaoTi,
		afterindent=true,
	},
}

%详细设置参见%https://zhuanlan.zhihu.com/p/401538511
%\RequirePackage{titlesec}%深度定制标题

%中英abstract, keywords设置
\renewenvironment{abstract}[1]{\newpage\begin{center}\section*{\abstractname}\end{center} \addcontentsline{toc}{section}{\abstractname} \par \otherFontSize #1}{\par\pagenumbering{Roman}}

\newcommand{\keywords}[1]{\vskip 1em\noindent {\otherFontSize \textbf{关键词：} #1}\par}

\newcommand{\enabstractname}{Abstract}
\newenvironment{enabstract}[1]{\newpage\begin{center}\section*{\enabstractname}\end{center} \addcontentsline{toc}{section}{\enabstractname} \par \otherFontSize #1}{\par}

\newcommand{\enkeywords}[1]{\vskip 1em\noindent {\otherFontSize \textbf{Key words：} #1}\newpage\pagenumbering{arabic}}

%acknowledgement致谢设置
\newcommand{\acknowledgementname}{致谢}
\newenvironment{acknowledgement}[1]{\newpage\begin{center}\section*{\acknowledgementname}\end{center} \addcontentsline{toc}{section}{\acknowledgementname} \par #1}{\newpage}

%references参考文献设置
\newcommand{\reference}[1]{\newpage\centering \bibliography{#1} \addcontentsline{toc}{section}{\refname}\newpage}

\RequirePackage[square,numbers,super,sort&compress,sectionbib]{natbib}
%\RequirePackage{gbt7714}
\bibliographystyle{references/gbt7714-numerical.bst}%gbt7714-author-year,gbt7714-numerical
\renewcommand{\bibfont}{\otherFontSize}

%其他设置
\date{\today}
\RequirePackage{xcolor}%颜色
\RequirePackage{graphicx}%插入图片
\graphicspath{{figures/}}

\RequirePackage{caption}%图表标题
\RequirePackage{subcaption}%子图表标题

\def\equationautorefname~#1\null{式\,(#1)\,\null}
\def\figureautorefname~#1\null{图\,#1\,\null}
\def\tableautorefname~#1\null{表\,#1\,\null}

\RequirePackage{listings}
\renewcommand{\lstlistingname}{代码片段}
\renewcommand{\lstlistlistingname}{代码片段目录}

%http://latexcolor.com/
\lstdefinelanguage{latex}{
	basicstyle=\small\ttfamily,%整体格式设置
	backgroundcolor=\color[RGB]{247, 247, 247},
	%字符列为非等宽
	flexiblecolumns=true,
	%换行缩进
	tabsize=4,
	showtabs=false,
	%代码框, 四个角, 框线宽
	frame=single,
	frameround=tttt,
	%framerule=0pt,
	%断行
	breaklines=true,
	breakindent=0pt,
	breakatwhitespace=false,
	%允许的空行数,大于1的空行将被省略,但行号仍被计算
	emptylines=*1,
	%行号
	numbers=left, 
	numbersep=6pt, 
	numberstyle=\tiny\color[RGB]{102, 102, 102},
	numberblanklines=false,
	%stepnumber=2,
	%展示空格
	showspaces=false,                
	showstringspaces=false,
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%LaTeX language 设置
	%定义注释
	morecomment=[l]{\%},
	commentstyle={\color[RGB]{63, 127, 127}},
	%环境 开始与结束
	morekeywords={[1]begin,end},
	keywordstyle={[1]\color{blue!70!black}\bfseries},
	%导言区命令
	morekeywords={[2]documentclass,usepackage},
	keywordstyle={[2]\color{red!75!black}\bfseries},
	%类和包
	morekeywords={[3]YNUbachelor,myPackages},
	keywordstyle={[3]\color[RGB]{119, 158, 203}\bfseries},
	%个人信息
	morekeywords={[4]title,school,author,studentID,major,teacher},
	keywordstyle={[4]\color{red!80}\bfseries},
	%命令名
	morekeywords={[5]cover,copyrightpage,maketitle,toc,keywords,enkeywords,bfseries,textbf,lstinputlisting,centering,includegraphics,linewidth,caption,label,toprule,midrule,bottomrule,autoref,cite,reference,backcover,newcommand,newenvironment,renewcommand,renewenvironment,LaTeX,appendix,lstinline,heavyrulewidth,lightrulewidth,cmidrulewidth,cmidrule,verb,item,lstset,vspace,hspace,subcaption},
	keywordstyle={[5]\color{cyan!70!black}\bfseries},
	%环境名
	morekeywords={[6]document,abstract,enabstract,figure,table,tabular,align,acknowledgement,latexcode,minipage,enumerate,itemize,subfigure},
	keywordstyle={[6]\color[RGB]{90, 79, 207}\bfseries},
	%章节
	morekeywords={[7]section,subsection,subsubsection},
	keywordstyle={[7]\color[RGB]{201, 105, 35}\bfseries},
}
\lstnewenvironment{latexcode}
{\lstset{language=latex,numbers=none}}
{}

%hyperref超链接设置
\AtEndOfPackage{
	\RequirePackage[utf8]{inputenc}

	\RequirePackage{hyperref}
	\hypersetup{
		breaklinks=true,
		unicode=true,
		linktoc=all,
		bookmarksopen=true,
		bookmarksnumbered=true,
		pdfstartview=FitH,
		pdftitle={云南大学本科毕业论文(设计)},
		pdfcreator={YNU-thesis-bachelor \thesisversion},
	}
}

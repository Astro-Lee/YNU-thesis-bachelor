% Copyright
% GitHub repository：https://github.com/Astro-Lee/YNU-thesis-bachelor
% 作者：Rui-Zhi Li
% 邮箱：liruizhi0871@gmail.com

\newcommand\thesisversion{v0.0.1}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{YNUbachelor}[2021/12/24 YNU-thesis-bachelor \thesisversion, 1023976839@qq.com]
\LoadClass[twoside,UTF8,a4paper,scheme=plain,zihao=-4,fontset=none]{ctexart}

%判断是否使用XeLaTeX编译
\RequirePackage{ifxetex}
\ifxetex\else
\ClassError{YNUbachelor}{必须使用 `xelatex' 编译器进行编译\MessageBreak Please choose `xelatex'}{Just choose `xelatex', no `pdflatex' or `latex' and so on.}
\fi

%标题以外,正文文字行距为固定值22pt
%https://github.com/ustctug/ustcthesis/blob/df62a2627f42556ab421700577e3b90af3947189/ustcthesis.cls#L647
\renewcommand\normalsize{%
      \@setfontsize\normalsize{12bp}{22bp}%
      \abovedisplayskip 12bp \@plus3bp \@minus7bp%
      \abovedisplayshortskip \z@ \@plus3bp%
      \belowdisplayshortskip 6.5bp \@plus3.5bp \@minus3bp%
      \belowdisplayskip \abovedisplayskip
      \let\@listi\@listI}%

\linespread{1}\selectfont
\normalsize

%\RequirePackage{ifplatform}
%字体下载 https://gitee.com/Astro-Lee/fonts
\RequirePackage{xeCJK}

%简体中文 宋体
%\setCJKmainfont{SimSun.ttf}[Path=fonts/]
\setCJKmainfont{SimSun.ttf}[AutoFakeBold=true, Path=fonts/, Mapping=fullwidth-stop]

%简体中文 黑体
\setCJKsansfont{SimHei.ttf}[Path=fonts/]
\newCJKfontfamily[heiti]\heiti{SimHei.ttf}[Path=fonts/]

%简体中文 仿宋
\setCJKmonofont{SimFang.ttf}[Path=fonts/]

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

\setlength{\parskip}{0bp} %段落间距

% 浮动体和正文的间距
\setlength{\textfloatsep}{22bp}

\RequirePackage{amsmath,amsfonts,amssymb,siunitx}%数学公式扩展，花体，扩展符号的基础字体支持，扩展符号定义成命令，物理量的单位
%\RequirePackage[math-style=ISO, bold-style=ISO]{unicode-math}
%\setmathfont{XITS Math}

%字体格式设置
\newcommand{\yiCengBiaoTi}{\zihao{3} \heiti}%一层标题格式设置
\newcommand{\erCengBiaoTi}{\zihao{4} \heiti}%二层标题格式设置
\newcommand{\otherFontSize}{\zihao{-4} \heiti}%三层及以下标题格式设置

%页边距设置
% 参考 https://github.com/ustctug/ustcthesis/blob/master/ustcthesis.cls 相关设置
\RequirePackage[a4paper,
	% 根据 word 视觉效果调整的页边距，通过 powertoy 的 ruler 工具测量，效果相近
	top           = 3.0cm,
    bottom        = 2.7cm,
    left          = 3.0cm,
    right         = 2.0cm,
    head          = 1.6cm,
    foot          = 0.85cm,
	]{geometry}
	\addtolength{\oddsidemargin}{0cm}
	\addtolength{\evensidemargin}{1cm} 

%ctexset设置
\ctexset{
	tocdepth=3,%目录深度
	secnumdepth=3,%section深度, 仅section, subsection, subsubsection可用
	punct=quanjiao,%全角标点
	autoindent=2,
	today=small,
	contentsname={目\texorpdfstring{\qquad}{}录},
	listfigurename={图目录},
	listtablename={表目录},
	figurename={图},
	tablename={表},
	abstractname={摘\texorpdfstring{\qquad}{}要},
	indexname={索引},
	appendixname={附录},
	bibname={参考文献},
	proofname={证明},
}

\ctexset{
	% 关于字号和行距，见 https://blog.csdn.net/weixin_43849277/article/details/115201445#:~:text=1%20%E5%B0%8F%E5%9B%9B%E5%AD%97%E4%BD%93%E5%AF%B9%E5%BA%9412%E7%A3%85%EF%BC%8C12%20X%200.03527%20%3D%200.42324%20cm%202,cm%203%20%E6%8D%A2%E4%B8%BAbp%EF%BC%8C0.687765%20%2F%200.0353%20%3D%2019.4834%20bp
	section = {
		format ={\clearpage\phantomsection\centering\yiCengBiaoTi},
		afterindent=true,
		% beforeskip={0.8em},
		beforeskip=16.64bp,
		% afterskip={0.5em},
		afterskip=10.4bp,
		fixskip = {false},
	},
	subsection = {
		format ={\phantomsection\erCengBiaoTi},
		afterindent=true,
		% beforeskip={0.5em},
		beforeskip = 10.4bp,
		afterskip= 0bp,
		fixskip = {false},
	},
	subsubsection = {
		format ={\phantomsection\otherFontSize},
		afterindent=true,
		% TODO: 这里的0.6 是临时方案，如果设置为0，会导致subsubsection标题和正文之间的间距过小。
		% 另，设置为 0.6 em 依然有问题，如果二级标题和三级标题之间的没有正文，那么二级标题和三级标题之间的间距也会过小。
		% beforeskip={0.0em},
		beforeskip={0.6em},
		afterskip={0.0em},
		indent= {2\ccwd},
		fixskip = {false},
	},
}

%详细设置参见%https://zhuanlan.zhihu.com/p/401538511
%\RequirePackage{titlesec}%深度定制标题

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

\newcommand{\frontcover}{%
	\AddToShipoutPicture*{%
		\put(0,0){%
			\parbox[b][\paperheight]{\paperwidth}{%
				\vfill
				\centering
				\includegraphics[width=\paperwidth,height=\paperheight,keepaspectratio]%
				{figures/frontcover.pdf}
				\vfill}}
			
		\put(7.7cm,13cm){\makebox[18em][c]{\large \@title}}
		
		\put(7.7cm,11.75cm){\makebox[18em][c]{\large \@school}}
		
		\put(7.7cm,10.49cm){\makebox[18em][c]{\large \@major}}
		
		\put(7.7cm,9.21cm){\makebox[18em][c]{\large \@author}}
		
		\put(7.7cm,7.93cm){\makebox[18em][c]{\large \@studentID}}
		
		\put(9.05cm,6.73cm){\makebox[15em][c]{\large \@teacher}}
		
		\put(8.4cm,3.2cm){%
			\makebox[2em][c]{\large \number\year}\hskip2em
			\makebox[3.6em][c]{\large \number\month}\hskip1em
			\makebox[3.6em][c]{\large \number\day}}
	}
	\pagestyle{empty}~\clearpage
}

%封底
\newcommand{\backcover}{
	\AtEndDocument{%
		\label{LastContentPage}
		\clearpage~\thispagestyle{empty}
		\AddToShipoutPicture*{%
		\put(0,0){%
			\parbox[b][\paperheight]{\paperwidth}{%
				\vfill
				\centering
				\includegraphics[width=\paperwidth,height=\paperheight,keepaspectratio]%
				{figures/backcover.pdf}
				\vfill}}
		}
	}}

%毕业论文（设计）独创性声明及使用授权
\newcommand{\copyrightpage}{%
	\begin{center}
		\heiti \zihao{3}毕业论文（设计）独创性声明及使用授权
	\end{center}\vskip 2em
	{

		本毕业论文（设计）是作者在导师指导下取得的成果。除了文中特别加以标注和致谢的地方外，论文（设计）中不包含其他人已经发表或撰写过的研究成果，不存在剽窃或抄袭行为。与作者一同工作的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示了谢意。
		
		现就论文（设计）的使用对云南大学授权如下：学校有权保留本论文（设计）（含电子版），也可以采用影印、缩印或其他复制手段保存论文（设计）\,；学校有权公布论文的全部或部分内容，可以将论文（设计）用于查阅或借阅服务；学校有权向有关机构送交学位论文（设计）用于学术规范审查、社会监督或评奖；学校有权将学位论文（设计）的全部或部分内容录入有关数据库用于检索服务。
		
		%\hskip 1em {\heiti (内部或保密的论文}（设计）{\heiti 在解密后应遵循此规定)} 
		\vskip 3.6cm
		
		\noindent 作者姓名：\underline{\makebox[8em][c]{}} 导师姓名：\underline{\makebox[8em][c]{}}日 \hskip 1em 期：\underline{\makebox[8em][c]{}}
	}
	\pagestyle{empty}\clearpage}

%maketitle设置
\def\@maketitle{%
	\null
	\begin{center}
		{\yiCengBiaoTi \@title}
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

%页眉页脚
\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
\fancypagestyle{PreContent}{
	\fancyhf{}
    \fancyfoot[C]{\thepage}
	\renewcommand\headrulewidth{0.0pt}
}

\fancypagestyle{Content}{
	\fancyhf{}
    \fancyhead[OC]{\zihao{5} \leftmark}
	\fancyhead[EC]{\zihao{5} \@title}
    \fancyfoot[C]{\zihao{5} 第\thepage 页（共~\pageref{LastContentPage}~页）}
	\renewcommand\headrulewidth{0.5pt}
}
\renewcommand{\sectionmark}[1]{\markboth{#1}{}}
% \renewcommand{\sectionmark}[1]{\markboth{\CTEXifname{\CTEXthesection\quad}{}#1}{}}
% \setlength{\headheight}{12.64723pt}%页眉高度

%中英abstract, keywords设置
\renewenvironment{abstract}[1]{%
	\section*{\abstractname
		\addcontentsline{toc}{section}{\abstractname}
		\markboth{\abstractname}{}
		}
	#1}
	{\thispagestyle{PreContent}\pagenumbering{Roman}}

\newcommand{\keywords}[1]{%
	{{\heiti 关键词:} #1}}

\newcommand{\enabstractname}{Abstract}
\newenvironment{enabstract}[1]{%
	\section*{\bfseries \enabstractname
		\addcontentsline{toc}{section}{\enabstractname}
		\markboth{\enabstractname}{}
		}
	#1}
	{\thispagestyle{PreContent}\pagenumbering{Roman}}

\newcommand{\enkeywords}[1]{%
	{\textbf{Key Words:} #1}}

%contents目录设置
%http://static.latexstudio.net/article/2019/0513/titlesec_c.pdf
\RequirePackage{titletoc}%深度定制目录
\RequirePackage{afterpage}%用于目录后切换页眉页脚，https://gitee.com/MkSwQi/usstthesis/blob/master/usstthesis.cls#L347

\titlecontents{section}[\z@]{\heiti}
{\contentspush{\thecontentslabel\unskip\hspace{\ccwd}}}{}
{\titlerule*[.8pc]{$\cdot$}\contentspage}

\titlecontents{subsection}[2\ccwd]{}
{\contentspush{\thecontentslabel\hspace{\ccwd}}}{}
{\titlerule*[.8pc]{$\cdot$}\contentspage}

\titlecontents{subsubsection}[4\ccwd]{}
{\contentspush{\thecontentslabel\hspace{\ccwd}}}{}
{\titlerule*[.8pc]{$\cdot$}\contentspage}

\renewcommand\tableofcontents{%
    \section*{\contentsname%
		% 将目录页中的目录页码标记去除
		% \addcontentsline{toc}{section}{\contentsname}%
		\markboth{\contentsname}{}%
	}%
	\pagestyle{PreContent}
	\pagenumbering{Roman}
    \@starttoc{toc}%
    \thispagestyle{PreContent}%
	\afterpage{\pagenumbering{arabic}}%
	\pagestyle{Content}%
}

%acknowledgement致谢设置
\newcommand{\acknowledgementname}{致\texorpdfstring{\qquad}{}谢}
\newenvironment{acknowledgement}[1]{%
	\section*{\acknowledgementname
	\addcontentsline{toc}{section}{\acknowledgementname}
	\markboth{\acknowledgementname}{}
	}
	#1}
	{}

% 总结与展望设置
\newcommand{\conclusionname}{结论}
\newenvironment{conclusion}[1]{
	\section*{\conclusionname
	\addcontentsline{toc}{section}{\conclusionname}
	\markboth{\conclusionname}{}
	}
	#1}
	{}




%参考文献
\RequirePackage[square,numbers,super,sort&compress,sectionbib]{natbib}
% \RequirePackage{gbt7714}
\bibliographystyle{references/gbt7714-numerical.bst}%gbt7714-author-year,gbt7714-numerical

%natbib.sty
\renewcommand\bibsection{%
    \section*{\refname%
	\addcontentsline{toc}{section}{\refname}%
	\markboth{\refname}{}%
    }%
}

%https://github.com/ustctug/ustcthesis/blob/f7db43e2b87bf5f61babdd3a500ecbc69a803b3e/ustcthesis.cls#L3031
\renewcommand{\bibfont}{\normalsize}
\setlength{\bibsep}{0\p@ \@plus.2\p@}
\renewcommand\@biblabel[1]{[#1]\hfill}
\setlength{\bibhang}{2\ccwd}

%附录设置
\renewcommand\appendix{\par
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \renewcommand\thesection{\appendixname~\Alph{section}}
  \renewcommand\thesubsection{\Alph{section}.\arabic{subsection}}
  \renewcommand\thesubsubsection{\Alph{section}.\arabic{subsection}.\arabic{subsubsection}}
  \renewcommand{\theequation}{\Alph{section}.\arabic{equation}}
  \renewcommand{\thefigure}{\Alph{section}.\arabic{figure}}
  \renewcommand{\thetable}{\Alph{section}.\arabic{table}}
  }

%表格字号为五号,https://www.zhihu.com/question/366803177
\RequirePackage{xpatch}
\xpatchcmd\@floatboxreset
  {\normalsize}
  {\expandafter\ifstrequal\expandafter{\@captype}{table}
      % if inside "table" env
      {\small}
      % otherwise
      {\normalsize}}
  {}{\fail}

\RequirePackage{etoolbox}%对浮动体无效
\AtBeginEnvironment{tabular}{\small}
\AtBeginEnvironment{longtable}{\small}

%图表的序号和标题间空一格,标题为黑体小四\otherFontSize
\RequirePackage[tableposition=bottom,figureposition=top,labelsep=quad]{caption}%图表标题
\RequirePackage{subcaption}%子图表标题
\DeclareCaptionFont{heiti}{\otherFontSize}
\captionsetup{labelfont=heiti,textfont=heiti}
\captionsetup[figure]{labelformat=simple}
\captionsetup[subfigure]{labelformat=parens}
\captionsetup[table]{labelformat=simple}
\captionsetup[subtable]{labelformat=parens}

%脚注为带圈数字https://github.com/CasperVector/pkuthss/blob/b80742e3c67bc5837dbb6c057a42b834315e9ced/tex/pkuthss.cls#L132
\RequirePackage{tikz}
\newcommand*{\@circled}[1]{%
	\scalebox{0.5}{%
		\tikz[thick, baseline = (char.base)]{%
		\node[shape = circle, draw = black, minimum size = 1.25em, inner sep = 0pt ] (char) {\bfseries #1};
	}}%
}

% Use circled numbers as footnote symbols. Does not affect title page, but
% footnote is rarely used in dissertation covers ;)
\renewcommand*{\thefootnote}{%
	$^{\protect\@circled{\arabic{footnote}}}$%
	}

% Provides utility to modify footnote spacing.
% Option used to make sure it does not render interleaf pages totally blank.
\RequirePackage[cleardoublepage = current]{scrextend}
% Set up footnote spacing: whole paragraph indent 2em, 0.1em after mark.
\deffootnote{2em}{0pt}{\thefootnotemark\hspace{0.1em}}

%https://zhuanlan.zhihu.com/p/74515148
% shorten footnote rule
% \xpatchcmd\footnoterule
%   {.4\columnwidth}
%   {1in}
%   {}{\fail}

%列表环境间隔
%https://blog.csdn.net/fandroid/article/details/54644966
\RequirePackage{enumitem}
\setenumerate[1]{itemsep=-3pt,partopsep=0pt,parsep=\parskip,topsep=0pt}
\setitemize[1]{itemsep=-3pt,partopsep=0pt,parsep=\parskip,topsep=0pt}
\setdescription{itemsep=-3pt,partopsep=0pt,parsep=\parskip,topsep=0pt}

%其他设置
\date{\today}
\RequirePackage{xcolor}%颜色
\RequirePackage{graphicx}%插入图片
\graphicspath{{figures/}}
\RequirePackage{zhlipsum}

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
	morekeywords={[5]frontcover,copyrightpage,maketitle,tableofcontents,keywords,enkeywords,bfseries,textbf,lstinputlisting,centering,includegraphics,linewidth,caption,label,toprule,midrule,bottomrule,autoref,cite,reference,backcover,newcommand,newenvironment,renewcommand,renewenvironment,LaTeX,appendix,lstinline,heavyrulewidth,lightrulewidth,cmidrulewidth,cmidrule,verb,item,lstset,vspace,hspace,subcaption},
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
\AtEndOfClass{
	\RequirePackage{hyperref}
	\hypersetup{
		breaklinks=true,
		unicode=true,
		linktoc=all,
		bookmarksopen=true,
		bookmarksnumbered=true,
		pdfstartview=FitH,
		pdftitle={云南大学本科毕业论文(设计)},
		pdfauthor = \@author,
		pdfcreator={YNU-thesis-bachelor \thesisversion},
	}

	% \pkg{hyperref} 与 \pkg{unicode-math} 存在一些兼容性问题, https://github.com/ustctug/ustcthesis/blob/bb27361648d850831d3899f308f7e2a83b9a6914/ustcthesis.cls#L3163
	\@ifpackagelater{hyperref}{2019/04/27}{}{%
		\g@addto@macro\psdmapshortnames{\let\mu\textmu}%
	}
}

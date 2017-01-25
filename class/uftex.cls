\def\filename{uftex.dtx}
%  X.0.0 - novas funções
%  0.X.0 - melhorias e / ou evoluções
%  0.0.X - correção de bugs
\def\fileversion{v1.3.0}
\def\filedate{2016/08/25}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass {uftex} [\filedate\ \fileversion\ Classe personalizada para o curso de Ciência da Computação da UFT - CUP]

\def\@@ptsize{12pt}
\DeclareOption{10pt}{\def\@@ptsize{10pt}}
\DeclareOption{11pt}{\def\@@ptsize{11pt}}
\DeclareOption{12pt}{\def\@@ptsize{12pt}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions \relax
\LoadClass[oneside,\@@ptsize]{book}

% ------------------------------------------------------------------------------------------------------ %
% --------------- Pacotes
% ------------------------------------------------------------------------------------------------------ %
% --------------- A codificação de fonte T1 é uma codificação de 8 bits e utiliza fontes que têm 256 glifos
\RequirePackage[T1]{fontenc}
% --------------- Idioma da texto, a acentuação pode ser escrita normalmente
\RequirePackage[english,brazil]{babel}
% --------------- Codificação do arquivo
\RequirePackage[utf8]{inputenc}
% --------------- Inclusão de arquivos em PDF no documento
\RequirePackage{pdfpages}
% --------------- Utilização da marca d'agua
\RequirePackage{wallpaper}  
% --------------- Usamos arquivos pdf/png como figuras
\RequirePackage{graphicx}
% --------------- Somar total de folhas
\RequirePackage{zref-totpages}
% --------------- Espaçamento flexível
\RequirePackage{setspace}
% --------------- Indentação do primeiro parágrafo
\RequirePackage{indentfirst}
% --------------- Acrescentamos a bibliografia/indice/conteudo no Table of Contents
\RequirePackage[nottoc, notlof,notlot]{tocbibind}
% --------------- Multiplas colunas e linhas em tabelas
\RequirePackage{multirow}
% --------------- Rotação e objeto flutuante, como figuras e tabelas
\RequirePackage{rotating}
% --------------- Referenciar o número de páginas no documento
\RequirePackage{lastpage}
% --------------- Fornece comandos extras para melhorar a qualidade das tabelas
\RequirePackage{booktabs}
% --------------- Conjunto de construção de fontes virtual, a partir das fontes CM Padrão
\RequirePackage{ae}
% --------------- Utilização de subfiguras
\RequirePackage{subfigure}
% --------------- Rotação e reposicionamento de figuras
\RequirePackage{wrapfig}
% --------------- Utilização das mais variadas fórmulas matemáticas
\RequirePackage{amsfonts,amsthm,amsopn,amssymb,latexsym}
% --------------- Para utilização e formatação de código fonte em diversas linguagens
\RequirePackage{listings}
\lstset{ %
basicstyle=\footnotesize,       % the size of the fonts that are used for the code
numbers=left,                   % where to put the line-numbers
numberstyle=\footnotesize,      % the size of the fonts that are used for the line-numbers
stepnumber=1,                   % the step between two line-numbers. If it's 1 each line will be numbered
numbersep=5pt,                  % how far the line-numbers are from the code
showspaces=false,               % show spaces adding particular underscores
showstringspaces=false,         % underline spaces within strings
frame=single,	                % adds a frame around the code
captionpos=b,                   % sets the caption-position to bottom
breaklines=true,                % sets automatic line breaking
breakatwhitespace=false,        % sets if automatic breaks should only happen at whitespace
backgroundcolor=\color[rgb]{1.0,1.0,1.0}, % choose the background color.
rulecolor=\color[rgb]{0.8,0.8,0.8},
extendedchars=true,
xleftmargin=10pt,
xrightmargin=10pt
}  
% --------------- Estilização dos rótulos de capítulos e seções
\RequirePackage{titlesec} 
\newcommand{\hsp}{\hspace{20pt}}
\titleformat{\chapter}[hang]{\Huge\bfseries}{\thechapter\hsp}{0pt}{\Huge\bfseries}
\titlespacing*{\chapter}{0pt}{-20pt}{30pt}
% --------------- Formatação das captions de figuras e tabelas
\RequirePackage[font=small,format=plain,labelfont=bf,up,textfont=it,up]{caption}
% --------------- Margens
\RequirePackage[a4paper,top=3cm,bottom=2.0cm,left=3.0cm,right=2.cm]{geometry} 
% --------------- Links em preto
\RequirePackage[pdftex,unicode=true,plainpages=false,pdfpagelabels,pagebackref,colorlinks=true,citecolor=black,linkcolor=black,urlcolor=black,filecolor=black,bookmarksopen=true]{hyperref}
% --------------- soluciona o problema com o hyperref e capitulos
\RequirePackage[all]{hypcap}
% --------------- Estilo de referências bibliográficas
%\RequirePackage[numbers]{natbib}
% --------------- Garantir que dois ou mais blocos de texto ocupam o mesmo espaço horizontal na página.
\RequirePackage{eqparbox}
% --------------- Este pacote exporta algumas macros a partir do kernel LATEX em um namespace separado e torna disponível para outros formatos, como TEX.
\RequirePackage{ltxcmds}
% --------------- Utilização de comandos básicos como \ifthenelse
\RequirePackage{ifthen}
% --------------- Este pacote pode desativar toda a hifenização ou ativar a hifenização de fontes não-alfabéticos ou monoespaçadas.
\RequirePackage{hyphenat}
% --------------- Utilizado para construir a capa e folha de rosto
\RequirePackage{tabularx}
\RequirePackage{xstring}
% ------------------------------------------------------------------------------------------------------ %
% --------------- Redefinição de comandos e criação de comandos básicos para documento
% ------------------------------------------------------------------------------------------------------ %
\renewenvironment{quote}
               {\list{}{\itemindent    \listparindent
                        \leftmargin=4cm%  whatever you need
                        \topsep=10pt%%%%%  whatever you need
                        \parsep        \z@ \@plus\p@}%
                        \item\relax\small\ignorespaces}
               {\endlist}
% ------------------------------------------------------------------------------------------------------ %
\DeclareOption{tcc}{%
  \newcommand{\@degree}{B.el.}
  \newcommand{\@projecttype}{Pré-Projeto}
  \newcommand{\@degreename}{Bacharelado}
  \newcommand{\local@degname}{Bacharel}
  \newcommand{\foreign@degname}{Bachelor}
  \newcommand\local@doctype{Trabalho de Conclusão de Curso}
  \newcommand\foreign@doctype{Bachelor Thesis}
}
\DeclareOption{tcc1}{%
  \newcommand{\@degree}{B.el.}
  \newcommand{\@projecttype}{Pré-Projeto}
  \newcommand{\@degreename}{Bacharelado}
  \newcommand{\local@degname}{Bacharel}
  \newcommand{\foreign@degname}{Bachelor}
  \newcommand\local@doctype{Trabalho de Conclusão de Curso I}
  \newcommand\foreign@doctype{Bachelor Thesis}
}
\DeclareOption{tcc2}{%
  \newcommand{\@degree}{B.el.}
  \newcommand{\@projecttype}{Plano de Trabalho}
  \newcommand{\@degreename}{Bacharelado}
  \newcommand{\local@degname}{Bacharel}
  \newcommand{\foreign@degname}{Bachelor}
  \newcommand\local@doctype{Trabalho de Conclusão de Curso II}
  \newcommand\foreign@doctype{Bachelor Thesis}
}

\newcommand\department[1]{%
  \ifthenelse{\equal{#1}{EC}}
    {\global\def\local@deptname{Engenharia Civil}
     \global\def\foreign@deptname{Civil Engineering}}{}
  \ifthenelse{\equal{#1}{EE}}
    {\global\def\local@deptname{Engenharia El{\' e}trica}
     \global\def\foreign@deptname{Electrical Engineering}}{}
  \ifthenelse{\equal{#1}{EA}}
    {\global\def\local@deptname{Engenharia Ambiental}
     \global\def\foreign@deptname{Production Engineering}}{}
  \ifthenelse{\equal{#1}{CC}}
    {\global\def\local@deptname{Ci{\^ e}ncia da Computa{\c c}{\~ a}o}
     \global\def\foreign@deptname{Computer Science}}{}
   \ifthenelse{\equal{#1}{AL}}
    {\global\def\local@deptname{Engenharia de Alimentos}
     \global\def\foreign@deptname{Food Engineering}}{}
}
% ------------------------------------------------------------------------------------------------------ %
\renewcommand\title[1]{%
  \global\def\local@title{#1}%
}
% ------------------------------------------------------------------------------------------------------ %
\newcommand\foreigntitle[1]{%
  \global\def\foreign@title{#1}%
}
% ------------------------------------------------------------------------------------------------------ %
\newcount\@advisor\@advisor0
\newcommand\advisor[4]{%
  \global\@namedef{uftAdvisorTitle:\expandafter\the\@advisor}{#1}
  \global\@namedef{uftAdvisorName:\expandafter\the\@advisor}{#2}
  \global\@namedef{uftAdvisorSurname:\expandafter\the\@advisor}{#3}
  \global\@namedef{uftAdvisorDegree:\expandafter\the\@advisor}{#4}
  \global\advance\@advisor by 1
  \ifnum\@advisor>1
    \renewcommand\local@coadvisorstring{Coorientador}
    \renewcommand\foreign@advisorstring{Advisors}
  \fi
}
% ------------------------------------------------------------------------------------------------------ %
\newcount\@examiner\@examiner0
\newcommand\examiner[3]{%
  \global\@namedef{uftExaminer:\expandafter\the\@examiner}{#1\ #2, #3}
  \global\advance\@examiner by 1
}
% ------------------------------------------------------------------------------------------------------ %
\newcount\@foreignkeyword\@foreignkeyword0
\newcommand\foreignkeyword[1]{%
  \global\@namedef{uftForeignkeyword:\expandafter\the\@foreignkeyword}{#1}
  \global\advance\@foreignkeyword by 1
}
% ------------------------------------------------------------------------------------------------------ %
\renewcommand\author[2]{%
  \global\def\@authname{#1}
  \global\def\@authsurn{#2}
}
% ------------------------------------------------------------------------------------------------------ %
\renewcommand\date[2]{%
  \month=#1
  \year=#2
}
% ------------------------------------------------------------------------------------------------------ %
\newcount\@class\@class0
\newcommand\class[1]{%
  \global\def\local@class{#1}%
  \global\advance\@class by 1
}
% ------------------------------------------------------------------------------------------------------ %
\newcommand\local@monthname{\ifcase\month\or
  Janeiro\or Fevereiro\or Mar{\c c}o\or Abril\or Maio\or Junho\or
  Julho\or Agosto\or Setembro\or Outubro\or Novembro\or Dezembro\fi}
\newcommand\foreign@monthname{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi}
\newcounter{keywords}
\newcommand\keyword[1]{%
  \global\@namedef{uftKeyword:\expandafter\the\c@keywords}{#1}
  \global\addtocounter{keywords}{1}
}
% ------------------------------------------------------------------------------------------------------ %
%\newboolean{finalversion}
%\setboolean{finalversion}{false}
\renewcommand\frontmatter{%
  \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{roman}
  %\ifthenelse{\boolean{finalversion}}{
     \thispagestyle{empty}
     \setcounter{page}{2}
     \makefrontpage
     %\clearpage
     %\thispagestyle{empty}
     %\makecatalog}{\setcounter{page}{2}}
  \clearpage
  \pagestyle{plain}
}
% ------------------------------------------------------------------------------------------------------ %
\renewcommand\mainmatter{%
  \uftex@mainBegin
  \cleardoublepage
  \@mainmattertrue
  \pagestyle{plain}
  \pagenumbering{arabic}}
% ------------------------------------------------------------------------------------------------------ %
\renewcommand\backmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi}
% ------------------------------------------------------------------------------------------------------ %
\AtBeginDocument{%
  \ltx@ifpackageloaded{hyperref}{
    \def\uftex@bibEnd{%
      \immediate\write\@auxout{%
        \string\newlabel{bib:end}{{}{\arabic{page}}{}{page.\arabic{page}}{}}}}%
    \def\uftex@bibBegin{%
      \immediate\write\@auxout{%
        \string\newlabel{bib:begin}{{}{\arabic{page}}{}{page.\arabic{page}}{}}}}%
    \def\uftex@mainBegin{%
      \immediate\write\@auxout{%
        \string\newlabel{front:pageno}{{}{\Roman{page}}{}{page.\roman{page}}{}}}}%
    \def\uftex@hasLof{%
      \immediate\write\@auxout{%
        \string\newlabel{cat:lofflag}{{}{:~il.;}{}{page.\roman{page}}{}}}}%
  }{%
    \def\uftex@bibEnd{%
      \immediate\write\@auxout{%
      \string\newlabel{bib:end}{{}{\arabic{page}}{}}}}%
    \def\uftex@bibBegin{%
      \immediate\write\@auxout{%
      \string\newlabel{bib:begin}{{}{\arabic{page}}{}}}}%
    \def\uftex@mainBegin{%
      \immediate\write\@auxout{%
        \string\newlabel{front:pageno}{{}{\Roman{page}}{}}}}%
    \def\uftex@hasLof{%
      \immediate\write\@auxout{%
        \string\newlabel{cat:lofflag}{{}{:~il.;}{}}}}%
  }%
}
% ------------------------------------------------------------------------------------------------------ %
\renewcommand\maketitle{%
  \pagenumbering{alph}
  \ltx@ifpackageloaded{hyperref}{\uftex@hypersetup}{}%
  \begin{titlepage}
\begin{minipage}{0.2\textwidth}% adapt widths of minipages to your needs
\includegraphics[width=.8\linewidth]{logouft}
\end{minipage}%
\hfill%
\begin{minipage}{0.8\textwidth}\raggedright
\MakeUppercase\frontcover@maintext
\end{minipage}
  \vfill
  \begin{center}
  \nohyphens{\MakeUppercase\local@title}\par
  \vfill
  \nohyphens{\@authname\ \@authsurn}\par
  \vfill
  \nohyphens{%
  \begin{tabularx}{8.45cm}[b]{@{ }>{\raggedright\arraybackslash}X@{}}
    %\local@advisorstring: %&
    %\local@advisorstring:
    \count1=0
    %\toks@={}
    \@whilenum \count1<\@advisor \do{%
    \ifcase\count1 % same as \ifnum0=\count1
        \local@advisorstring: \csname uftAdvisorDegree:\the\count1 \endcsname \ 
        \csname uftAdvisorName:\the\count1 \endcsname \ 
        \csname uftAdvisorSurname:\the\count1 \endcsname \ \par
    \else
        \local@coadvisorstring: \csname uftAdvisorDegree:\the\count1 \endcsname \ 
        \csname uftAdvisorName:\the\count1 \endcsname \ 
        \csname uftAdvisorSurname:\the\count1 \endcsname \ \par
    \fi
    \advance\count1 by 1}
    %\the\toks@
  \end{tabularx}}\par
  \vspace*{\fill}
  \local@cityname\par
  \local@monthname\ de \number\year
  \end{center}
  \end{titlepage}
  \global\let\maketitle\relax%
  \global\let\and\relax}
% ------------------------------------------------------------------------------------------------------ %
\newcommand\makefrontpage{%
  \begin{center}
    \sloppy\nohyphens{\MakeUppercase\local@title}\par
    \vfill
    {\@authname\ \@authsurn}\par
  \end{center}
  \vfill
  \begin{flushright}
  \begin{minipage}{8.45cm}
  \frontpage@maintext
  \end{minipage}\par
 \end{flushright}
  \vfill
%  \noindent \par Comissão Julgadora:\par
%     \begin{center}
%  \begin{flushright}
%        \count1=0
%        \@whilenum \count1<\@examiner \do {
%            %\vskip26\p@ \baselineskip12pt
%        %\eqmakebox[signture@list][c]{\hrulefill}\\
%        \eqmakebox[signture@list][c]{%
%            \ \ \ \protect\csname uftExaminer:\the\count1 \endcsname\ \ \ }\\
%            \advance\count1 by 1}
%  \end{flushright}
%     \end{center}
%  \vspace*{\fill}
  \frontpage@bottomtext}
% ------------------------------------------------------------------------------------------------------ %
\newcommand\makecatalog{%

\expandafter\StrLeft\expandafter{\@authsurn}{1}[\firstletterauthor]
\expandafter\StrLeft\expandafter{\local@title}{1}[\firstlettertitle]

  \vspace*{\fill}
  \begin{center}
  {\small
    \setlength{\fboxsep}{3mm}
    %\framebox[120mm][c]{\makebox[5mm][c]{}%
    %\noindent\makebox[\linewidth]{\hdashrule{\paperwidth}{1pt}{1pt}}
      \begin{minipage}{135mm}
      {\bf\centering Dados Internacionais de Catalogação na Publicação (CIP) \par
      Sistema de Bibliotecas da \local@universityname \par}
       \noindent\makebox[\linewidth]{\rule{\textwidth}{1pt}}
       {\footnotesize
       \begin{tabularx}{135mm}[b]{@{}l@{ }>{\raggedright\arraybackslash}X@{}} \MakeUppercase{\firstletterauthor}447\MakeLowercase{\firstlettertitle} \ \ \ \ & 
      \setlength{\parindent}{6mm}
      \noindent\sloppy\nohyphens\@authsurn,
      \nohyphens\@authname\par
      \nohyphens{\local@title/\@authname\ \@authsurn. -- \local@cityname, TO, \number\year.}\par
       \ztotpages\ f.\@ifundefined{r@cat:lofflag}{}{\pageref{cat:lofflag}}\par\ \par
      % There is an issue here. When the last entry must be split between lines,
      % the spacing between it and the next paragraph becomes smaller.
      % Should we manually introduce a fixed space? But how could we know that
      % a name was split? Is this happening yet?
      \nohyphens{Monografia Graduação -- \local@universityname\ -- Campus Universitário de \local@cityname\ -- Curso de \local@deptname, \number\year.}\par
      
      \nohyphens{%
      \begin{tabularx}{100mm}[b]{@{ }>{\raggedright\arraybackslash}X@{}}
       \count1=0
    %\toks@={}
    \@whilenum \count1<\@advisor \do{%
    \ifcase\count1 % same as \ifnum0=\count1
        \local@advisorstring: \csname uftAdvisorDegree:\the\count1 \endcsname \ 
        \csname uftAdvisorName:\the\count1 \endcsname \ 
        \csname uftAdvisorSurname:\the\count1 \endcsname \ \par
    \else
        \local@coadvisorstring: \csname uftAdvisorDegree:\the\count1 \endcsname \ 
        \csname uftAdvisorName:\the\count1 \endcsname \ 
        \csname uftAdvisorSurname:\the\count1 \endcsname \ \par
    \fi
    \advance\count1 by 1}
      \end{tabularx}}\par\ \par
      
      \count1=0
      \count2=1
      \nohyphens{\@whilenum \count1<\value{keywords} \do {%
        \number\count2. \csname uftKeyword:\the\count1 \endcsname.
        \advance\count1 by 1
        \advance\count2 by 1} I. T{\' i}tulo.} \par
        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \  \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ {\bf CDD 4}
        \end{tabularx}
        \noindent\makebox[\linewidth]{\rule{\textwidth}{1pt}}
        \noindent\sloppy\nohyphens{TODOS OS DIREITOS RESERVADOS -- A reprodução total ou parcial, de qualquer forma ou por qualquer meio deste documento é autorizado desde que citada a fonte. A violação dos direitos do autor (Lei nº 9.610/98) é crime estabelecido pelo artigo 184 do Código Penal.}}
    \end{minipage}}
  \end{center}
  }%\vspace*{\fill}}

    
% ------------------------------------------------------------------------------------------------------ %
\newcommand\uftex@hypersetup{%
\begingroup
  % changes to \toks@ and \count@ are kept local;
  % it's not necessary for them, but it is usually the case
  % for \count1, because the first ten counters are written
  % to the DVI file, thus you got lucky because of PDF output
  \toks@={}% in this special case not necessary
  \count@=0 %
  \@whilenum\count@<\value{keywords}\do{%
    % * a keyword separator is not necessary,
    %    if there is just one keyword
    % * \csname CoppeKeyword:\the\count@\endcsname must be expanded
    %    at least once, to get rid of the loop depended \count@
    \ifcase\count@ % same as \ifnum0=\count@
      \toks@=\expandafter{\csname uftKeyword:\the\count@\endcsname}%
    \else
      \toks@=\expandafter\expandafter\expandafter{%
        \expandafter\the\expandafter\toks@
        \expandafter;\expandafter\space
        \csname uftKeyword:\the\count@\endcsname
      }%
    \fi
    \advance\count@ by 1 %
  }%
  \edef\x{\endgroup
    \noexpand\hypersetup{%
      pdfkeywords={\the\toks@}%
    }%
  }%
\x
\hypersetup{%
  pdfauthor={\@authname\ \@authsurn},
  pdftitle={\local@title},
  pdfsubject={\local@doctype\ de \@degreename\ em \local@deptname\ da CUP/UFT},
  pdfcreator={LaTeX with UFTeX toolkit},
  breaklinks={true},
  raiselinks={true},
  pageanchor={true},
}}
% ------------------------------------------------------------------------------------------------------ %
\newcommand\dedication[1]{
  \gdef\@dedic{#1}
    \cleardoublepage
    \vspace*{\fill}
    \begin{flushright}
      \begin{minipage}{60mm}
        \raggedleft \it \normalsize \@dedic
      \end{minipage}
    \end{flushright}}
% ------------------------------------------------------------------------------------------------------ %
\newenvironment{abstract}{%
\chapter*{Resumo}
\setlength{\parindent}{0pt}
}{\vspace{.5cm}

\count1=0
\noindent\nohyphens{{\bfseries Palavra-chave}: \@whilenum \count1<\value{keywords} \do {%
        \csname uftKeyword:\the\count1 \endcsname.
        \advance\count1 by 1
        \advance\count2 by 1}}\par}
% ------------------------------------------------------------------------------------------------------ %
\newenvironment{foreignabstract}{%
\chapter*{Abstract}
\setlength{\parindent}{0pt}
}{\vspace{.5cm}

\noindent\nohyphens{{\bfseries Keywords}: 
\count1=0
    \@whilenum \count1<\@foreignkeyword \do{%
    \protect\csname uftForeignkeyword:\the\count1%
        \expandafter\endcsname .
    \advance\count1 by 1}}\par}
% ------------------------------------------------------------------------------------------------------ %
\newenvironment{acknowledgement}{%
\chapter*{Agradecimentos}
\noindent
}{\vspace*{\fill}}
% ------------------------------------------------------------------------------------------------------ %
\newcommand\printlosymbols{%
\renewcommand\glossaryname{\listsymbolname}%
\@input@{\jobname.los}}
\def\makelosymbols{%
  \newwrite\@losfile
  \immediate\openout\@losfile=\jobname.syx
  \def\symbl{\@bsphack\begingroup
             \@sanitize
             \@wrlos}\typeout
  {Writing index of symbols file \jobname.syx}%
  \let\makelosymbols\@empty
}
\@onlypreamble\makelosymbols
\AtBeginDocument{%
\@ifpackageloaded{hyperref}{%
  \def\@wrlos#1#2{%
    \protected@write\@losfile{}%
      {\string\indexentry{[#1] #2|hyperpage}{\thepage}}%
    \endgroup
    \@esphack}}{%
  \def\@wrlos#1#2{%
    \protected@write\@losfile{}%
      {\string\indexentry{[#1] #2}{\thepage}}%
    \endgroup
    \@esphack}}}
% ------------------------------------------------------------------------------------------------------ %
\newcommand\printloabbreviations{%
\renewcommand\glossaryname{\listabbreviationname}%
\@input@{\jobname.lab}}
\def\makeloabbreviations{%
  \newwrite\@labfile
  \immediate\openout\@labfile=\jobname.abx
  \def\abbrev{\@bsphack\begingroup
              \@sanitize
              \@wrlab}\typeout
  {Writing index of abbreviations file \jobname.abx}%
  \let\makeloabbreviations\@empty
}
\@onlypreamble\makeloabbreviations
\AtBeginDocument{%
\@ifpackageloaded{hyperref}{%
  \def\@wrlab#1#2{%
    \protected@write\@labfile{}%
      {\string\indexentry{[#1] #2|hyperpage}{\thepage}}%
    \endgroup
    \@esphack}}{%
  \def\@wrlab#1#2{%
    \protected@write\@labfile{}%
      {\string\indexentry{[#1] #2}{\arabic{page}}}%
    \endgroup
    \@esphack}}}
% ------------------------------------------------------------------------------------------------------ %
\newenvironment{theglossary}{%
  \if@twocolumn%
    \@restonecoltrue\onecolumn%
  \else%
    \@restonecolfalse%
  \fi%
  \@mkboth{\MakeUppercase\glossaryname}%
  {\MakeUppercase\glossaryname}%
  \chapter*{\glossaryname}%
  %\addcontentsline{toc}{chapter}{\glossaryname}
  \list{}
  {\setlength{\listparindent}{0in}%
   \setlength{\labelwidth}{1.0in}%
   \setlength{\leftmargin}{1.5in}%
   \setlength{\labelsep}{0.5in}%
   \setlength{\itemindent}{0in}}%
   \sloppy}%
  {\if@restonecol\twocolumn\fi%
\endlist}
% ------------------------------------------------------------------------------------------------------ %
\renewenvironment{theindex}{%
  \if@twocolumn
    \@restonecolfalse
  \else
    \@restonecoltrue
  \fi
  \twocolumn[\@makeschapterhead{\indexname}]%
  \@mkboth{\MakeUppercase\indexname}%
  {\MakeUppercase\indexname}%
  \thispagestyle{plain}\parindent\z@
  \addcontentsline{toc}{chapter}{\indexname}
  \parskip\z@ \@plus .3\p@\relax
  \columnseprule \z@
  \columnsep 35\p@
  \let\item\@idxitem}
  {\if@restonecol\onecolumn\else\clearpage\fi}
% ------------------------------------------------------------------------------------------------------ %
\newcommand\glossaryname{Glossary}
\newcommand\listabbreviationname{Lista de Abreviaturas}
\newcommand\listsymbolname{Lista de S{\' i}mbolos}
\newcommand\local@advisorstring{Orientador}
\newcommand\local@coadvisorstring{Coorientador}
\newcommand\foreign@advisorstring{Advisor}
\newcommand\local@universityname{Universidade Federal do Tocantins}
\newcommand\local@deptstring{Curso}
\newcommand\foreign@deptstring{Course}
\newcommand\local@cityname{Palmas}
\newcommand\local@statename{TO}
\newcommand\local@countryname{Brasil}
% ------------------------------------------------------------------------------------------------------ %
\newcommand\frontcover@maintext{
     \sloppy\nohyphens{\local@universityname \par
        Campus Universitário de Palmas\par
     \local@deptstring\ de \local@deptname \par
     \local@doctype}
}
% ------------------------------------------------------------------------------------------------------ %
\newcommand\frontpage@maintext{
  \sloppy\nohyphens{\local@doctype\ apresentado ao \local@deptstring\ de \local@deptname , CUP, da \local@universityname , como parte dos requisitos necess{\' a}rios {\` a} obten{\c c}{\~ a}o do t{\' i}tulo de \local@degname\ em \local@deptname .}
}
% ------------------------------------------------------------------------------------------------------ %
\newcommand\frontpage@bottomtext{%
  \begin{center}
  {\MakeUppercase{\local@cityname, \local@statename\ -- \local@countryname}}\par
  {\MakeUppercase\local@monthname\ DE \number\year}
  \end{center}%
}
% ------------------------------------------------------------------------------------------------------ %
\newcount\@fields\@fields0
\newcommand\field[1]{%
  \global\@namedef{uftfields:\expandafter\the\@fields}{#1}
  \global\advance\@fields by 1
}
% ------------------------------------------------------------------------------------------------------ %


% ------------------------------------------------------------------------------------------------------ %
% Inicio Pré-Projeto
% ------------------------------------------------------------------------------------------------------ %
\DeclareOption{project}{

\renewenvironment{abstract}{%
\section*{Resumo}
}{\vspace*{\fill}}

\renewenvironment{thebibliography}[1]
     {\section*{\bibname}% <-- this line was changed from \chapter* to \section*
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
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

% ------------------------------------------------------------------------------------------------------ %
\renewcommand\maketitle{%
  %\pagenumbering{alph}
  \ltx@ifpackageloaded{hyperref}{\uftex@hypersetup}{}%
  %\begin{titlepage}
\begin{minipage}{0.2\textwidth}% adapt widths of minipages to your needs
\includegraphics[width=.8\linewidth]{logouft}
\end{minipage}%
\hfill%
\begin{minipage}{0.8\textwidth}\raggedright
\MakeUppercase\frontcover@maintext
\end{minipage}
  
 \begin{center}
  \noindent\makebox[\linewidth]{\rule{\textwidth}{0.4pt}}
  \vspace{2mm}
  \nohyphens{\large\MakeUppercase\@projecttype} \par
  \nohyphens{\local@title}\par
  \noindent\makebox[\linewidth]{\rule{\textwidth}{0.4pt}}
  \local@cityname\par
  \local@monthname\ de \number\year
  \end{center}

  \textbf{Identificação} \par
  \nohyphens{{\bf Aluno}: \@authname\ \@authsurn}\par
  \count1=0
  \count2=0
  \nohyphens{{\bfseries Área de Pesquisa}: \@whilenum \count1<\@fields \do {%
        \count2=\count1
        \advance\count2 by 1
        \ifnum\count2=\@fields\relax
           \csname uftfields:\the\count1 \endcsname 
        \else 
           \csname uftfields:\the\count1 \endcsname \ / \fi
        \advance\count1 by 1}}\par 
  \count1=0
  \nohyphens{{\bfseries Palavra-chave}: \@whilenum \count1<\value{keywords} \do {%
        \csname uftKeyword:\the\count1 \endcsname.
        \advance\count1 by 1}}\par 
  
  \nohyphens{%
 %\begin{tabularx}{11.45cm}[b]{@{ }>{\raggedright\arraybackslash}X@{}}
    %\local@advisorstring: %&
    %\local@advisorstring:
    \count1=0
    %\toks@={}
    \@whilenum \count1<\@advisor \do{%
    \ifcase\count1 % same as \ifnum0=\count1
        {\bf\local@advisorstring}: \csname uftAdvisorDegree:\the\count1 \endcsname \ 
        \csname uftAdvisorName:\the\count1 \endcsname \ 
        \csname uftAdvisorSurname:\the\count1 \endcsname \ \par
    \else
        {\bf\local@coadvisorstring}: \csname uftAdvisorDegree:\the\count1 \endcsname \ 
        \csname uftAdvisorName:\the\count1 \endcsname \ 
        \csname uftAdvisorSurname:\the\count1 \endcsname \ \par
    \fi
    \advance\count1 by 1}
    %\the\toks@
  %\end{tabularx}
  } \par
}
}
% ------------------------------------------------------------------------------------------------------ %
% Fim Pré-Projeto
% ------------------------------------------------------------------------------------------------------ %

% ------------------------------------------------------------------------------------------------------ %
% Inicio Relatório
% ------------------------------------------------------------------------------------------------------ %
\DeclareOption{report}{

\newcommand\local@doctype{Relatório}
\newcommand\@degreename{Acadêmico}

% ------------------------------------------------------------------------------------------------------ %
\newcount\@uftauthor\@uftauthor0
\renewcommand\author[2]{%
  \global\def\@authname{#1}
  \global\def\@authsurn{#2}
  \global\@namedef{uftAuthor:\expandafter\the\@uftauthor}{#1\ #2}
  \global\advance\@uftauthor by 1
}
% ------------------------------------------------------------------------------------------------------ %
\renewcommand\frontmatter{%
  \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{roman}
  \thispagestyle{empty}
  \setcounter{page}{2}
  %\makefrontpage
  \clearpage
  \pagestyle{plain}
}
% ------------------------------------------------------------------------------------------------------ %
\renewcommand\frontcover@maintext{
     \sloppy\nohyphens{\local@universityname \par
        Campus Universitário de Palmas\par
   \ifnum\@class=0 %\endcsname\relax
     \local@deptstring\ de \local@deptname
   \else
     \local@deptstring\ de \local@deptname\par
     \local@doctype\ de \local@class
  \fi}
}
\renewcommand\maketitle{%
  \pagenumbering{alph}
  \ltx@ifpackageloaded{hyperref}{\uftex@hypersetup}{}%
  \begin{titlepage}

\begin{center}
%\begin{minipage}{0.2\textwidth}% adapt widths of minipages to your needs
\includegraphics[scale=.3]{logouft}\\
%\end{minipage}%
%\hfill%
%\begin{minipage}{0.8\textwidth}\raggedright
\MakeUppercase{\small{\frontcover@maintext}}
%\end{minipage}
\end{center}
  \vfill
  \begin{center}
  \nohyphens{\MakeUppercase\local@title}\par
  \vfill
  %\nohyphens{\@authname\ \@authsurn}\par
  \nohyphens{
    \count1=0
    \@whilenum \count1<\@uftauthor \do{%
      \protect\csname uftAuthor:\the\count1 \endcsname \par
      \advance\count1 by 1
  }}
  \vfill
 \ifnum0=\@advisor
    \vfil
\else
  \begin{tabularx}{8.45cm}[b]{@{}l@{ }>{\raggedright\arraybackslash}X@{}}
    \local@advisorstring: &
    \count1=0
    \toks@={}
    \@whilenum \count1<\@advisor \do{%
    \ifcase\count1 % same as \ifnum0=\count1
      \toks@=\expandafter{\csname uftAdvisorDegree:\the\count1%
        \expandafter\endcsname\expandafter\space%
        \csname uftAdvisorName:\the\count1%
        \expandafter\endcsname\expandafter\space%
        \csname uftAdvisorSurname:\the\count1\endcsname\\}
    \else
      \toks@=\expandafter\expandafter\expandafter{%
        \expandafter\the\expandafter\toks@%
        \expandafter&\expandafter\space%
        \csname uftAdvisorDegree:\the\count1%
        \expandafter\endcsname\expandafter\space%
        \csname uftAdvisorName:\the\count1\expandafter\endcsname%
        \expandafter\space\csname uftAdvisorSurname:\the\count1\endcsname\\
      }%
    \fi
    \advance\count1 by 1}
    \the\toks@
  \end{tabularx}\par
  \vfill\fi
  \local@cityname\par
  \local@monthname\ de \number\year
  \end{center}
  \end{titlepage}
  \global\let\maketitle\relax%
  \global\let\and\relax}
}
% ------------------------------------------------------------------------------------------------------ %
% Fim Relatório
% ------------------------------------------------------------------------------------------------------ %


\ProcessOptions\relax

\endinput
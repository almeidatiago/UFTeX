## Manual para utilização e elaboração de trabalhos acadêmicos utilizando a classe uftex.cls

Escrever documentos acadêmicos pode ser uma tarefa trabalhosa quando os autores têm que preparar os seus manuscritos rigorosamente respeitando as regras de formatação imposta pela instituição de ensino ou mesmo por agentes externos, como por exemplo, a ABNT (Associação Brasileira de Normas Técnicas). Visando, automatizar esse processo, deixando que o estudante foque mais no desenvolvimento do trabalho, ao invés da despender muito tempo com a formatação do mesmo. Atualmente, os TCCs apresentados ao Curso de Ciência da Computação da Universidade Federal do Tocantins (CComp/UFT (Universidade Federal do Tocantins) é editado em _LaTeX_, e essa demanda motivou o criação do projeto _uftex_, que tenta facilitar e incentivar o uso do _LaTeX_ no âmbito CComp/UFT.

### Opções da Classe


Esta classe contém uma série de configurações que visam facilitar o trabalho do aluno no momento da produção no _LaTeX_. 
A classe _uftex_ vem pré-configurada para cinco tipos de documentos distintos, são eles:

- **report**.  usada de forma genérica. Pode ser utilizada em relatórios de experimentos, aulas, trabalhos, etc. Esse comando cria somente permite que seja criada somente uma capa simples e a inclusão de vários autores ao mesmo documento.
- **tcc**. devido à mudança de grade do curso e na uma tentativa de generalizar à outros curso o projeto, esse opção cria uma capa formatada e folha de rosto ao documento, com o rótulo de Trabalho de Conclusão de Curso.
- **tcc1**. devido à mudança de grade do curso e na uma tentativa de generalizar à outros curso o projeto, esse opção cria uma capa formatada e folha de rosto ao documento, com o rótulo de Trabalho de Conclusão de Curso I.
- **tcc2**. devido à mudança de grade do curso e na uma tentativa de generalizar à outros curso o projeto, esse opção cria uma capa formatada e folha de rosto ao documento, com o rótulo de Trabalho de Conclusão de Curso II.
- project. utilizada para estilização do documento para criação de um pré-projeto do trabalho. Essa opção deve ser utilizada em conjunto com a opção **tcc**, **tcc1** ou **tcc2**.

Você pode especificar a opção de documento escolhida através do 

```latex
\documentclass[opções]{uftex}
```

> É importante destacar que as opções: **report**, **tcc**, **tcc1** e **tcc2** são conflitantes e não devem ser utilizadas em conjunto. in red


## Estrutura Visual

Os documentos produzidos a partir da classe _uftex_ devem conter três partes: pré-textuais, textuais e pós-textuais. Cada uma dessas partes são iniciadas chamando seu macro correspondente **\frontmatter**, **\mainmatter** ou **\backmatter**. Os _pré-textuais_ de um documento consistem em capa, folha de rosto, dedicatória, agradecimentos, resumos seguidos de palavras chaves, resumo em língua estrangeira, lista de abreviaturas, lista de símbolos, lista de algoritmos, listas de figuras, listas de tabelas e sumário. A parte principal ou textuais é composta apenas por capítulos, com suas seções e subseções, enquanto a parte pós-textual consiste de referências bibliográficas, apêndices e anexos.

Você deve chamar o macro **\frontmatter** imediatamente após o **\maketitle**. O comando **\mainmatter** vem logo antes do primeiro capítulo, e \verb+\backmatter+ deve ser digitado antes das referências bibliográficas.

### Capa

Este elemento é automaticamente construído pelo comando **\maketitle**. A opção de documento **project** inibe a construção do elemento capa.

Obrigatoriamente, para a construção do elemento capa, devem ser inseridos os seguintes comandos:

- ```latex \author{}{}``` -- O comando ```latex\author``` foi redefinido. Aqui, ele leva dois argumentos: o primeiro nome do autor e o sobrenome, por exemplo, \verb+\author{Primeiro nome}{Sobrenome}+. Se a opção escolhida for \verb+report+, mais de um autor poderá ser adicionado ao documento.
- ```latex \title{}``` -- O comando ```latex \title```  é usados para inserir os títulos de sua monografia em língua materna.
-  ```latex \foreigntitle{}``` -- O comando ```latex \foreigntitle``` é utilizado para colocar o título da monografia em língua estrangeira. Utilizado somente para o caso do aluno desejar escrever seu trabalho em outro idioma, por exemplo, em inglês. Caso contrário não é necessário utilizá-lo.
- ```latex \advisor{}{}{}{}``` -- Comando utilizado para acrescentar o nome do orientador do trabalho. Ele é dividido em quatro campos: profissão, primeiro nome, sobrenome e titulação, conforme:

```latex
\advisor{Prof.}{Nome do Primeiro Orientador}{Sobrenome}{Dr.}
\advisor{Prof.}{Nome do Segundo Orientador}{Sobrenome}{Me.}
```

Mais de um orientador pode ser adicionado, para o caso de trabalhos co-orientados. Se for escolhida a opção \verb+report+ não é necessário a utilização desse comando.
\item \verb+\department{}+ -- Quanto ao departamento, a princípio estão cadastradas as seguintes abreviaturas: EC (Engenharia Civil), EE (Engenharia Elétrica), EA (Engenharia Ambiental), CC (Ciência da Computação) e AL (Engenharia de Alimentos). Você deve especificar o seu departamento usando uma das abreviaturas acima, por exemplo, \verb+\department{CC}+.
\item \verb+\date{}{}+ -- Este comando é usado para definir o mês e ano da defesa. Por exemplo, Janeiro de 2016 deve ser inserido como \verb+\date{01}{2016}+.
\item \verb+\field{}+ -- Esse comando adiciona os campos da área de pesquisa do trabalho a ser desenvolvido de acordo com a classificação de área da ACM. Esse comando é utilizado somente quando a opção de classe \verb+project+ for escolhida para elaboração do documento.
\item \verb+\class{}+ -- Esse comando adiciona o nome de uma disciplina ao cabeçalho da capa. Esse comando é utilizado somente quando a opção de classe \verb+report+ for escolhida para elaboração do documento e é um campo opcional. A sua não utilização implica somente em não aparecer o nome da disciplina no cabeçalho.
\end{itemize}

### Folha de rosto

Este elemento também é construída a partir do \verb+\maketitle+, se as opções escolhidas no documento forem: \verb+tcc+, \verb+tcc1+ ou \verb+tcc2+. 
	
Os orientadores não são necessariamente membros da banca examinadora do TCC. Assim, é necessário digitar os nomes de todos os avaliadores usando o comando \verb+\examiner{}{}{}+. Os nomes dos examinadores são inseridos da seguinte forma:

\begin{verbatim}
	\examiner{Prof.}{Nome do Primeiro Examinador Sobrenome}{Ph.D.}
	\examiner{Prof.}{Nome do Segundo Examinador Sobrenome}{D.Sc.}
	\examiner{Prof.}{Nome do Terceiro Examinador Sobrenome}{D.Sc.}
\end{verbatim}	

### Antecedendo _Resumo_ e _Abstract_

As palavras-chave devem descrever as áreas de concentração de seu trabalho. Essas informações serão utilizadas na criação do resumo. Você deve fornecê-las como se segue:

```latex
	\keyword{Primeira palavra-chave}
	\keyword{Segunda palavra-chave}
	\keyword{Terceira palavra-chave}
```


As palavras chaves em língua estrangeira também devem ser descritas para criação do \emph{Abstract}, utilizando os comandos:

```latex
	\foreignkeyword{First keyword}
	\foreignkeyword{Second keyword}
	\foreignkeyword{Third keyword}
```

{\color{red}Lembre-se que todos os nomes devem ser dados antes do comando \verb+\maketitle+.}

### Dedicatória (Opcional)

Este comando foi adicionado por conveniência. O texto de entrada é colocado no lado inferior direito de uma página em branco. Deve ser enfatizado e em tamanho normal. A forma correta de utilizar esta macro é:
\begin{verbatim}\dedication{A alguém cujo valor é digno desta dedicatória.}\end{verbatim} e a mesma deverá vir logo abaixo do comando \verb+\frontmatter+.


### Resumo e _Abstract_

O resumo e \emph{abstract} devem estar em uma página cada, com em torno de 250 palavras. É recomendável que eles tenham apenas um parágrafo longo. Eles devem ser definidos dentro dos ambientes \verb+\abstracts+ e \verb+\foreignabstract+. Por exemplo:

```latex
\begin{abstract}
Algum texto...    
\end{abstract}
```

E

```latex
\begin{foreignabstract}
Algum texto...    
\end{foreignabstract}
```


### Lista de Símbolos e Abreviaturas (Opcional)

As listas de símbolos e abreviaturas são opcionais, embora altamente recomendadas. \cite{JW82}
É uma boa prática definir um símbolo/abreviatura em sua primeira ocorrência no texto. Para definir um símbolo de uso \verb+\symbl{Símbolo}{Definição do Símbolo}+, e para abreviaturas \verb+\abbrev{Abreviatura}{Abreviatura Definição}+.
É interessante destacar que estes comandos não provocam alteração no lugar onde são escritos, ou seja, só aparecem na lista de símbolos e abreviaturas. % explicar melhor isso aqui.

Estas listas são lexicograficamente classificadas usando o programa \emph{MakeIndex}, que é parte de qualquer implementação \LaTeX. \emph{MakeIndex} precisa de dois comandos para criar uma lista final ordenada: um que gera uma lista de entradas e outro que indica a posição onde a lista será impressa. Para gerar as listas de símbolos e abreviaturas, a classe \uftex\ fornece os comandos \verb+\makeloabreviations+ e \verb+\makelosymbols+, respectivamente. Eles devem ser chamados no preâmbulo do documento. Os comandos \verb+\printlosymbols+ e \verb+\printloabbreviations+ tem que ser invocados no ponto onde você quer que estas listas apareçam, por exemplo, seguindo a lista de tabelas como por exemplo:

```latex
\documentclass[tcc]{uftex}
% ----  Esse comandos são necessário no pré-ambulo para a impressão da
%lista de lista abreviatuas e de símbolos
\makelosymbols
\makeloabbreviations
% ---- Início do documento
\begin{document}
  .
  .
  .
  % ---- Comando responsável por criar a capa do trabalho e/ou folha de
  %resto conforme a configuração exigida
  \maketitle
  % ---- Esse comando marca o inicio dos elementos pré-textuais, e
  %adiciona a numeração de páginas em algarismos romanos em caixa baixa
  \frontmatter
  % ---- Cria uma dedicatória ao trabalho. OPCIONAL
  \dedication{A algu\'em cujo valor \'e digno desta dedicat\'oria.}
  % ---- Cria os agradecimentos do trabalho. OPCIONAL
  \begin{acknowledgement}
  Gostaria de agradecer a todos.
  \end{acknowledgement}
  % ---- Cria o resumo em idioma escolhido pelo usuário, no caso em
  %português. OBRIGATÓRIO
  \begin{abstract}
  Algum texto ...
  \end{abstract}
  % ---- Cria o resumo em idioma estrangeiro, no caso em inglês.
  %OBRIGATÓRIO
  \begin{foreignabstract}
  In this work, we present ...
  \end{foreignabstract}
  \printlosymbols  
  \printloabbreviations
  % ---- Cria a lista de figuras. OPCIONAL
  \listoffigures
  % ---- Cria a lista de tabelas. OPCIONAL
  \listoftables 
  % ---- Cria o sumário. OBRIGATÓRIO
  \tableofcontents % sumário
% --- Marca o inicio dos elementos textuais. Capítulos.
\mainmatter
% ---- Defino o espaçamento de um e meio centímetros
\onehalfspacing
% --------------------------------------------------------------------- %
% Capítulos do trabalho
% --------------------------------------------------------------------- %
\chapter{Introdução}
.
.
.
\backmatter 
\singlespacing   % espaçamento simples
% --------------------------------------------------------------------- %
% Bibliografia
% --------------------------------------------------------------------- %
\bibliographystyle{plainnat} % citação bibliográfica alpha
\bibliography{exemplo}

% --------------------------------------------------------------------- %
% Anexos
% --------------------------------------------------------------------- %
\appendix

\end{document}
```

Uma vez que você compila o \texttt{latex}, ele criará dois arquivos com extensões \texttt{abx} e \texttt{syx}, que contêm dados de entrada \emph{MakeIndex}. Eles devem ser processados com \texttt{makeindex} a fim de obter as listas produzidas corretamente, redirecionando a saída para arquivos com extensão \texttt{lab} e \texttt{los} respectivamente:

\begin{verbatim}
	makeindex -s uftex.ist -o exemplo.lab exemplo.abx
	makeindex -s uftex.ist -o exemplo.los exemplo.syx
\end{verbatim}

Observe a opção \texttt{-s} para especificar o estilo \emph{uftex.ist}. Agora, compile o \texttt{latex} duas vezes para obter as referências e está feito. % explicar melhor isso aqui. Especificar com mais clareza a ordem em que os comandos devem ser feitos, ou seja, explicar melhor o processo.

## Elaboração do documento

- \textbf{Parágrafos}. Todos os parágrafos no inicio de cada Capítulo ou Seção devem ser iniciados sem indentação utilizando o comando \verb+\noindent+.
- \textbf{Citações}. Para citações longas com mais de três linhas é possível utilizar o aperfeiçoamento do ambiente \verb+\quote+, como por exemplo:

```latex
    \begin{quote}
    ``Minha citação''
    \end{quote}
```

Porém, esse recurso deve ser utilizado com muito cuidado para evitar situação de plágio. 

- \textbf{Imagens}. O formato de imagem padrão do \LaTeX é a \emph{Encapsulated PostScript} (EPS). Se você usar PDF \LaTeX, o formato padrão se torna o PDF, mas você pode igualmente carregar arquivos PNG. Para tal, você deve digitar o nome do arquivo de imagem sem extensão, por exemplo, 

```latex
\begin{figure}
  \includegraphics[dimensões]{nome-do-arquivo}
  \caption{Legenda.}\label{chave_para_refencia_cruzada}
\end{figure}
```

e o pdflatex irá procurar em primeiro lugar um arquivo chamado \textit{nome-do-arquivo.pdf} e depois para \textit{nome-do-arquivo.png}.

- \textbf{Fontes}. A fonte padrão em \LaTeX\ é o \emph{Computer Modern}. Se você quiser uma versão melhorada, considere usar o pacote \emph{lmodern}. Para usar o \emph{Times}, é recomendado carregar o pacote \emph{mathptmx}. Há também uma versão melhorada da \emph{Times} disponível com o pacote \emph{tgtermes}. Você ainda pode usar o tipo de letra \emph{Arial} com o pacote \emph{uarial}. % Mas, acho que é melhor não modificar estas configurações, certo?

- \textbf{Hyperref}. Ao trabalhar com PDFs, há a possibilidade de adicionar informações extras para o arquivo como o nome do autor, título do documento, assunto, palavras-chave, etc. Isso é feito com facilidade através do pacote \emph{hyperref}. Também é útil para permitir \emph{hiperlinks}. Felizmente, a classe \uftex\ vai fazer isso automaticamente se o pacote \emph{hyperref} for carregado. % Para maiores informações consulte \ref{sec:pacotes}.

- \textbf{Impressão}. Para que seu trabalho seja impresso corretamente, você deve garantir que qualquer opção de escala de página (por exemplo, a adequação ou encolhimento para área de impressão) não esteja habilitado. Este tipo de opção, muitas vezes vem em diálogo de impressão de softwares de visualização de documentos. % 


## Referências Bibliográficas

Sabe-se que os dados bibliográficos podem ser facilmente mantidos com o auxílio do BibTeX. A forma correta de utilizar este recurso é  incluindo suas referências BibTeX sem a extensão bib, como no exemplo a seguir:

```latex
	\bibliography{exemplo}
```

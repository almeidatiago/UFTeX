Manual de utilização e elaboração de trabalhos acadêmicos utilizando a classe uftex.cls
Escrever documentos acadêmicos pode ser uma tarefa trabalhosa quando os autores precisam preparar seus manuscritos respeitando as regras de formatação imposta pela instituição de ensino ou mesmo por agentes externos, como por exemplo, a ABNT (Associação Brasileira de Normas Técnicas). O objetivo da classe uftex.cls é automatizar a preparação de manuscritos, deixando que o estudante dedique mais ao desenvolvimento do trabalho, ao invés de despender muito tempo com a formatação do documento. Atualmente, os Trabalhos de Conclusão de Curso do curso de Ciência da Computação da Universidade Federal do Tocantins (CComp/UFT (Universidade Federal do Tocantins) é elaborado em LaTeX, e essa demanda motivou o criação do projeto UFTeX, que tenta facilitar e incentivar o uso do LaTeX no âmbito da UFT.

Opções da Classe
Esta classe contém uma série de configurações que visam facilitar o trabalho do aluno no momento da produção do texto em LaTeX. A classe uftex vem pré-configurada para cinco tipos de documentos distintos, são eles:

report -- usada de forma genérica. Pode ser utilizada em relatórios de experimentos, aulas, trabalhos, etc.. Esse comando cria somente permite que seja criada somente uma capa simples e a inclusão de vários autores ao mesmo documento.
tcc -- devido à mudança de grade do curso e na uma tentativa de generalizar à outros curso o projeto, esse opção cria uma capa formatada e folha de rosto ao documento, com o rótulo de Trabalho de Conclusão de Curso.
tcc1 -- devido à mudança de grade do curso e na uma tentativa de generalizar à outros curso o projeto, esse opção cria uma capa formatada e folha de rosto ao documento, com o rótulo de Trabalho de Conclusão de Curso I.
tcc2 -- devido à mudança de grade do curso e na uma tentativa de generalizar à outros curso o projeto, esse opção cria uma capa formatada e folha de rosto ao documento, com o rótulo de Trabalho de Conclusão de Curso II.
project -- utilizada para estilização do documento para criação de um pré-projeto do trabalho. Essa opção deve ser utilizada em conjunto com a opção tcc, tcc1 ou tcc2.
latosensu -- utilizada para estilização do documento com o rótulo de Pós-Graduação Latu Senso.
Você pode especificar a opção de documento escolhida através do

\documentclass[opções]{uftex}
É importante destacar que as opções: report, tcc, tcc1 e tcc2 são conflitantes e não devem ser utilizadas em conjunto.

Estrutura Visual
Os documentos produzidos a partir da classe uftex devem conter três partes: pré-textuais, textuais e pós-textuais. Cada uma dessas partes são iniciadas chamando seu macro correspondente \frontmatter, \mainmatter ou \backmatter. Os pré-textuais de um documento consistem em capa, folha de rosto, dedicatória, agradecimentos, resumos seguidos de palavras chaves, resumo em língua estrangeira, lista de abreviaturas, lista de símbolos, lista de algoritmos, listas de figuras, listas de tabelas e sumário. A parte principal ou textuais é composta apenas por capítulos, com suas seções e subseções, enquanto a parte pós-textual consiste de referências bibliográficas, apêndices e anexos.

Você deve chamar o macro \frontmatter imediatamente após o \maketitle. O comando \mainmatter vem logo antes do primeiro capítulo, e \backmatter deve ser digitado antes das referências bibliográficas.

Capa
Este elemento é automaticamente construído pelo comando \maketitle. A opção de documento project inibe a construção do elemento capa.

Obrigatoriamente, para a construção do elemento capa, devem ser inseridos os seguintes comandos:

\author{}{} -- O comando \author foi redefinido. Aqui, ele leva dois argumentos: o primeiro nome do autor e o sobrenome, por exemplo, \verb+\author{Primeiro nome}{Sobrenome}+. Se a opção escolhida for \verb+report+, mais de um autor poderá ser adicionado ao documento.
\title{} -- O comando \title é usados para inserir os títulos de sua monografia em língua materna.
latex \foreigntitle{} -- O comando \foreigntitle é utilizado para colocar o título da monografia em língua estrangeira. Utilizado somente para o caso do aluno desejar escrever seu trabalho em outro idioma, por exemplo, em inglês. Caso contrário não é necessário utilizá-lo.
\advisor{}{}{}{} -- Comando utilizado para acrescentar o nome do orientador do trabalho. Ele é dividido em quatro campos: profissão, primeiro nome, sobrenome e titulação, conforme:
\advisor{Prof.}{Nome do Primeiro Orientador}{Sobrenome}{Dr.}
\advisor{Prof.}{Nome do Segundo Orientador}{Sobrenome}{Me.}
Mais de um orientador pode ser adicionado, para o caso de trabalhos co-orientados. Se for escolhida a opção report não é necessário a utilização desse comando.

\department{} -- Quanto ao departamento, a princípio estão cadastradas as seguintes abreviaturas: EC (Engenharia Civil), EE (Engenharia Elétrica), EA (Engenharia Ambiental), CC (Ciência da Computação), AL (Engenharia de Alimentos) e SAD (Sistemas de Apoio à Decisão). Você deve especificar o seu departamento usando uma das abreviaturas acima, por exemplo, \department{CC}.
\date{}{} -- Este comando é usado para definir o mês e ano da defesa. Por exemplo, Janeiro de 2016 deve ser inserido como \date{01}{2016}.
\field{} -- Esse comando adiciona os campos da área de pesquisa do trabalho a ser desenvolvido de acordo com a classificação de área da ACM. Esse comando é utilizado somente quando a opção de classe project for escolhida para elaboração do documento.
\class{} -- Esse comando adiciona o nome de uma disciplina ao cabeçalho da capa. Esse comando é utilizado somente quando a opção de classe report for escolhida para elaboração do documento e é um campo opcional. A sua não utilização implica somente em não aparecer o nome da disciplina no cabeçalho.
Folha de Rosto
É construída juntamente com a capa.

A Folha de Rosto é composta pelos seguintes itens na mesma ordem com que são apresentados:

autoria (centralizado e destacado em caixa alta e em negrito);
título (centralizado, negrito e caixa alta);
subtítulo (se houver);
especificação da natureza, objetivo e nome da instituição de ensino a que vai ser submetido o trabalho e área de concentração;
orientador com titulação máxima;
co-orientador (se houver) e titulação máxima;
local e ano de publicação.
Ficha Catalográfica (Para TCC2)
A Ficha Catalográfica é inserida após a defesa de TCC2. Ela deve vir imediatamente após a folha de rosto e antes da folha de aprovação.

A Ficha Catalográfica localiza-se na parte inferior da página no verso da folha de rosto, constando os dados que identificam o trabalho de acordo com o padrão internacional em vigor Código Anglo Americano (FEDERAÇÃO BRASILEIRA DE ASSOCIAÇÕES DE BIBLIOTECÁRIOS, 2002) e obedecendo a uma dimensão de 7,5 X 12,5 cm. Elaboração pelo Sistema Eletrônico de Geração de Fichas Catalográfica da UFT, conforme tutorial.

Disponível em: https://sistemas.uft.edu.br/ficha/

A Ficha Catalográfica não é gerada por esse template, deve ser inserida posteriormente.

Folha de Aprovação
Este elemento também é construída a partir do \maketitle, se as opções escolhidas no documento forem: tcc, tcc1 ou tcc2.

Os orientadores não são necessariamente membros da banca examinadora do TCC. Assim, é necessário digitar os nomes de todos os avaliadores usando o comando examiner{}{}{}. Os nomes dos examinadores são inseridos da seguinte forma:

\examiner{Prof.}{Nome do Primeiro Examinador Sobrenome}{Dr.}
\examiner{Prof.}{Nome do Segundo Examinador Sobrenome}{Me.}
\examiner{Prof.}{Nome do Terceiro Examinador Sobrenome}{Ma.}
Antecedendo Resumo e Abstract
As palavras-chave devem descrever as áreas de concentração de seu trabalho. Essas informações serão utilizadas na criação do resumo. Você deve fornecê-las como se segue:

\keyword{Primeira palavra-chave}
\keyword{Segunda palavra-chave}
\keyword{Terceira palavra-chave}
As palavras chaves em língua estrangeira também devem ser descritas para criação do Abstract, utilizando os comandos:

\foreignkeyword{First keyword}
\foreignkeyword{Second keyword}
\foreignkeyword{Third keyword}
Lembre-se que todos os nomes devem ser dados antes do comando maketitle.

Dedicatória (Opcional)
Este comando foi adicionado por conveniência. O texto de entrada é colocado no lado inferior direito de uma página em branco. Deve ser enfatizado e em tamanho normal. A forma correta de utilizar esta macro é:

\dedication{A alguém cujo valor é digno desta dedicatória.}
e a mesma deverá vir logo abaixo do comando \frontmatter.

Resumo e Abstract
O resumo e abstract devem estar em uma página cada, com em torno de 250 palavras. É recomendável que eles tenham apenas um parágrafo longo. Eles devem ser definidos dentro dos ambientes abstracts e foreignabstract. Por exemplo:

\begin{abstract}
Algum texto...    
\end{abstract}
E

\begin{foreignabstract}
Algum texto...    
\end{foreignabstract}
Lista de Símbolos e Abreviaturas (Opcional)
As listas de símbolos e abreviaturas são opcionais, embora altamente recomendadas. É uma boa prática definir um símbolo/abreviatura em sua primeira ocorrência no texto. Para definir um símbolo de uso \symbl{Símbolo}{Definição do Símbolo}, e para abreviaturas \abbrev{Abreviatura}{Abreviatura Definição}. É interessante destacar que estes comandos não provocam alteração no lugar onde são escritos, ou seja, só aparecem na lista de símbolos e abreviaturas.

Estas listas são lexicograficamente classificadas usando o programa \emph{MakeIndex}, que é parte de qualquer implementação LaTeX. MakeIndex precisa de dois comandos para criar uma lista final ordenada: um que gera uma lista de entradas e outro que indica a posição onde a lista será impressa. Para gerar as listas de símbolos e abreviaturas, a classe uftex fornece os comandos \makeloabreviations e \makelosymbols, respectivamente. Eles devem ser chamados no preâmbulo do documento. Os comandos \printlosymbols e printloabbreviations tem que ser invocados no ponto onde você quer que estas listas apareçam, por exemplo, seguindo a lista de tabelas como por exemplo:

\documentclass[tcc]{uftex}
% --------------------------------------------------------------------- %
\usepackage[alf,abnt-emphasize=bf]{abntex2cite}
\renewcommand{\backrefpagesname}{}
\renewcommand{\backref}{}
\renewcommand*{\backrefalt}[4]{}
% ----  Esse comandos são necessário no pré-ambulo para a impressão da
% lista de lista abreviatuas e de símbolos
\makelosymbols
\makeloabbreviations
% ---- Início do documento
\begin{document}
  \title{Estudo da vida marinha}
  \foreigntitle{Thesis Title}
  \author{Tiago da Silva}{Almeida}
  
  \advisor{Prof.}{José}{Mendonça}{Dr.}
  \advisor{Prof.}{Marcos}{da Oliveira}{Me.}

  \department{EC}
  \date{03}{2016}

  \keyword{Primeira palavra-chave}
  \keyword{Segunda palavra-chave}
  \keyword{Terceira palavra-chave}
  \keyword{Quarta palavra-chave}

  \foreignkeyword{First keyword}
  \foreignkeyword{Second keyword}
  \foreignkeyword{Third keyword}
  \foreignkeyword{Fourth keyword}
  % ---- Comando responsável por criar a capa do trabalho e/ou folha de
  %resto conforme a configuração exigida
  \maketitle
  % ---- Esse comando marca o inicio dos elementos pré-textuais, e
  %adiciona a numeração de páginas em algarismos romanos em caixa baixa
  \frontmatter
  
  % ----------------------------------------------------------------------------------------------------- %
  %  Este trecho deve ser inserido somente no caso do TCC2 já na versão FINAL
  % ----------------------------------------------------------------------------------------------------- %
  %\includepdf{ficha_catalografica}
  %\includepdf{ata_de_aprovacao}
  % ----------------------------------------------------------------------------------------------------- %
  
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
\ChapterStart{first}{First chapter}
\chapter{Introdução}
.
.
.
\backmatter 
\singlespacing   % espaçamento simples
% --------------------------------------------------------------------- %
% Bibliografia
% --------------------------------------------------------------------- %
\bibliography{tcc_exemplo}

% --------------------------------------------------------------------- %
% Anexos
% --------------------------------------------------------------------- %
\appendix

\end{document}
Uma vez que você compila o latex, ele criará dois arquivos com extensões abx e syx, que contêm dados de entrada \emph{MakeIndex}. Eles devem ser processados com makeindex a fim de obter as listas produzidas corretamente, redirecionando a saída para arquivos com extensão lab e los respectivamente:

makeindex -s uftex.ist -o tcc_exemplo.lab tcc_exemplo.abx
makeindex -s uftex.ist -o tcc_exemplo.los tcc_exemplo.syx
Observe a opção -s para especificar o estilo uftex.ist. Agora, compile o latex duas vezes para obter as referências e está feito. % explicar melhor isso aqui. Especificar com mais clareza a ordem em que os comandos devem ser feitos, ou seja, explicar melhor o processo.

Elaboração do documento
Citações. Para citações longas com mais de três linhas é possível utilizar o aperfeiçoamento do ambiente \verb+\quote+, como por exemplo:
\begin{quote}
``Minha citação''
\end{quote}
Porém, esse recurso deve ser utilizado com muito cuidado para evitar situação de plágio.

Caso contrário utilizar \verb+\cite{}+ para citação indireta e \verb+\citeonline{}+ para citação direta.

Imagens. O formato de imagem padrão do LaTeX é a Encapsulated PostScript (EPS). Se você usar PDF LaTeX, o formato padrão se torna o PDF, mas você pode igualmente carregar arquivos PNG. Para tal, você deve digitar o nome do arquivo de imagem sem extensão, por exemplo,
\begin{figure}
  \caption{Legenda.}\label{chave_para_refencia_cruzada}
  \includegraphics[dimensões]{nome-do-arquivo}
\end{figure}
e o pdflatex irá procurar em primeiro lugar um arquivo chamado nome-do-arquivo.pdf e depois para nome-do-arquivo.png.

Fontes. A fonte padrão em LaTeX é o Computer Modern. Se você quiser uma versão melhorada, considere usar o pacote lmodern. Para usar o Times, é recomendado carregar o pacote mathptmx. Há também uma versão melhorada da Times disponível com o pacote tgtermes. Você ainda pode usar o tipo de letra Arial com o pacote uarial.

Hyperref. Ao trabalhar com PDFs, há a possibilidade de adicionar informações extras para o arquivo como o nome do autor, título do documento, assunto, palavras-chave, etc. Isso é feito com facilidade através do pacote hyperref. Também é útil para permitir hiperlinks. Felizmente, a classe uftex vai fazer isso automaticamente se o pacote hyperref for carregado.

Impressão. Para que seu trabalho seja impresso corretamente, você deve garantir que qualquer opção de escala de página (por exemplo, a adequação ou encolhimento para área de impressão) não esteja habilitado. Este tipo de opção, muitas vezes vem em diálogo de impressão de softwares de visualização de documentos.

Referências Bibliográficas
Sabe-se que os dados bibliográficos podem ser facilmente mantidos com o auxílio do BibTeX. A forma correta de utilizar este recurso é incluindo suas referências BibTeX sem a extensão bib, como no exemplo a seguir:

\documentclass[tcc2]{uftex}
% --------------------------------------------------------------------- %
\usepackage[alf,abnt-emphasize=bf]{abntex2cite}
\renewcommand{\backrefpagesname}{}
\renewcommand{\backref}{}
\renewcommand*{\backrefalt}[4]{}
% ----  Esse comandos são necessário no pré-ambulo para a impressão da
% lista de lista abreviatuas e de símbolos
\makelosymbols
\makeloabbreviations
% ---- Início do documento
\begin{document}
.
.
.
\backmatter 
\singlespacing   
% --------------------------------------------------------------------- %
% Bibliografia
% --------------------------------------------------------------------- %
\bibliography{tcc_exemplo}
.
.
.
É necessária a inclusão na mesma pasta do projeto os pacotes do abntex2 para geração das referências bibliográficas de acordo com o padrão ABNT.

Algumas Referências
É muito recomendável a utilização de arquivos bibtex para o gerenciamento de referências a trabalhos. Exemplos de referências com a tag:

@book:
@book{JW82,
 author   = {Richard A. Johnson and Dean W. Wichern},
 title    = {Applied Multivariate Statistical Analysis},
 publisher= {Prentice-Hall},
 year     = {1983}
}
@article (artigos em revistas e jornais):
@article{MenaChalco08,
 author   = {Jesús P. Mena-Chalco and Helaine Carrer and Yossi Zana and 
            Roberto M. Cesar-Jr.},
 title    = {Identification of protein coding regions using the modified 
            {G}abor-wavelet transform},
 journal  = {IEEE/ACM Transactions on Computational Biology and Bioinformatics},
 volume   = {5},
 pages    = {198-207},
 year     = {2008},
}
@inProceedings (artigos em congressos):
@inproceedings{alves03:simi,
 author   = {Carlos E. R. Alves and Edson N. Cáceres and Frank Dehne and 
            Siang W. Song},
 title    = {A Parallel Wavefront Algorithm for Efficient Biological 
            Sequence Comparison},
 booktitle= {ICCSA '03: The 2003 International Conference on Computational 
            Science and its Applications},
 year     = {2003},
 pages    = {249-258},
 month    = May,
 publisher= {Springer-Verlag}
}
@incollection (coleção de livros, exemplo, As Crônicas de Gelo e Fogo):
@InCollection{bobaoglu93:concepts,
 author   = {Ozalp Babaoglu and Keith Marzullo},
 title    = {Consistent Global States of Distributed Systems: Fundamental 
             Concepts and Mechanisms},
 editor   = {Sape Mullender},
 booktitle= {Distributed Systems},
 edition  = {segunda},
 year     = {1993},
 pages    = {55-96}
}
@conference (Congresso):
@Conference{bronevetsky02,
 author   = {Greg Bronevetsky and Daniel Marques and Keshav Pingali and 
            Paul Stodghill},
 title    = {Automated application-level checkpointing of {MPI} programs},
 booktitle= {PPoPP '03: Proceedings of the 9th ACM SIGPLAN Symposium on Principles
            and Practice of Parallel Programming},
 year     = {2003},
 pages    = {84-89}
}
@phdThesis:
@PhdThesis{garcia01:PhD,
 author   = {Islene C. Garcia},
 title    = {Visões Progressivas de Computações Distribuídas},
 school   = {Instituto de Computação, Universidade de Campinas, Brasil},
 year     = {2001},
 month    = {Dezembro}
}
@mastersThesis:
@MastersThesis{schmidt03:MSc,
 author   = {Rodrigo M. Schmidt},
 title    = {Coleta de Lixo para Protocolos de \emph{Checkpointing}},
 school   = {Instituto de Computação, Universidade de Campinas, Brasil},
 year     = {2003},
 month    = Oct
}
@techreport:
@Techreport{alvisi99:analysisCIC,
 author   = {Lorenzo Alvisi and Elmootazbellah Elnozahy and Sriram S. Rao and
            Syed A. Husain and Asanka Del Mel},
 title    = {An Analysis of Comunication-Induced Checkpointing},
 institution= {Department of Computer Science, University of Texas at Austin},
 year     = {1999},
 number   = {TR-99-01},
 address  = {Austin, {USA}}
}
@manual:
@Manual{CORBA:spec,
 title    = {{CORBA v3.0 Specification}},
 author   = {{Object Management Group}},
 month    = Jul,
 year     = {2002},
 note     = {{OMG Document 02-06-33}}
}
@Misc (O que não se encaixa em nenhum outro caso):
@Misc{gridftp,
 author   = {William Allcock},
 title    = {GridFTP protocol specification. Global Grid Forum Recommendation (GFD.20)},
 year     = {2003}
}
@misc (Para referência a artigo online):
@Misc{fowler04:designDead,
 author   = {Martin Fowler},
 title    = {Is Design Dead?},
 year     = {2004},
 month    = May,
 note     = {Último acesso em 30/1/2010},
 howpublished= {\url{http://martinfowler.com/articles/designDead.html}},
}
@misc (Para referência a página web)
@Misc{FSF:GNU-GPL,
 author   = {Free Software Foundation},
 title    = {GNU general public license},
 note     = {Último acesso em 30/1/2010},
 howpublished= {\url{http://www.gnu.org/copyleft/gpl.html}},
}

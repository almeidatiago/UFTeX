## Manual para utilização e elaboração de trabalhos acadêmicos utilizando a classe uftex.cls

Escrever documentos acadêmicos pode ser uma tarefa trabalhosa quando os autores têm que preparar os seus manuscritos rigorosamente respeitando as regras de formatação imposta pela instituição de ensino ou mesmo por agentes externos, como por exemplo, a ABNT \abbrev{ABNT}{Associação Brasileira de Normas Técnicas}. Visando, automatizar esse processo, deixando que o estudante foque mais no desenvolvimento do trabalho, ao invés da despender muito tempo com a formatação do mesmo. Atualmente, os TCCs apresentados ao Curso de Ciência da Computação da Universidade Federal do Tocantins (CComp/UFT\abbrev{UFT}{Universidade Federal do Tocantins}) é editado em \LaTeX\, e essa demanda motivou o criação do projeto \uftex, que tenta facilitar e incentivar o uso do \LaTeX\ no âmbito CComp/UFT. \cite{JW82}


### Markdown

Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

### Opções da Classe


Esta classe contém uma série de configurações que visam facilitar o trabalho do aluno no momento da produção no \LaTeX. 
A classe \uftex\ vem pré-configurada para cinco tipos de documentos distintos, são eles:

- report.  usada de forma genérica. Pode ser utilizada em relatórios de experimentos, aulas, trabalhos, etc. Esse comando cria somente permite que seja criada somente uma capa simples e a inclusão de vários autores ao mesmo documento.
- tcc. devido à mudança de grade do curso e na uma tentativa de generalizar à outros curso o projeto, esse opção cria uma capa formatada e folha de rosto ao documento, com o rótulo de Trabalho de Conclusão de Curso.
- tcc1. devido à mudança de grade do curso e na uma tentativa de generalizar à outros curso o projeto, esse opção cria uma capa formatada e folha de rosto ao documento, com o rótulo de Trabalho de Conclusão de Curso I.
- tcc2. devido à mudança de grade do curso e na uma tentativa de generalizar à outros curso o projeto, esse opção cria uma capa formatada e folha de rosto ao documento, com o rótulo de Trabalho de Conclusão de Curso II.
- project. utilizada para estilização do documento para criação de um pré-projeto do trabalho. Essa opção deve ser utilizada em conjunto com a opção \verb+tcc+, \verb+tcc1+ ou \verb+tcc2+.

Você pode especificar a opção de documento escolhida através do 
```latex
\documentclass[opções]{uftex}
```

É importante destacar que as opções: \verb+report+, \verb+tcc+, \verb+tcc1+ e \verb+tcc2+ são conflitantes e não devem ser utilizadas em conjunto.

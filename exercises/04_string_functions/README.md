## 🧩 04 - Funções de String

Esta seção apresenta exercícios sobre funções de manipulação de strings no PL/SQL, abordando operações como concatenação, extração de substrings, remoção de espaços, alteração de caixa (maiúsculas/minúsculas), busca e substituição de texto, entre outras funções nativas.

O objetivo é desenvolver a capacidade de tratar, formatar e analisar textos em blocos PL/SQL, utilizando funções integradas para resolver cenários comuns em aplicações e rotinas de banco de dados.

Cada exercício apresentará um enunciado detalhado, exemplos de entrada e a saída esperada no console (DBMS_OUTPUT).

## 📋 Lista de Exercícios
| Nº      | Função        | Descrição / Cenário Prático                                                                                         | **Entrada Esperada (Exemplo de Dados)**         | **Saída Esperada / Objetivo**       |
| ------- | ------------- | ------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------- | ----------------------------------- |
| **1.**  | `LENGTH()`    | Exibir o **tamanho do nome completo** de cada beneficiário da tabela `Beneficiario`, para identificar nomes muito curtos ou incompletos.     | Não possui entrada.                        | `Nome1: 13`,`Nome2: 22` ...                       |
| **2.**  | `LENGTHB()`   | Calcular o **tamanho em bytes** do campo `NOME` dos dependentes da tabela `Dependente` para validar compatibilidade com sistemas externos. | Não possui entrada.                                 | `Marcos Correia, tamanho_bytes: 14, tamanho: 14`, `André Cavalcante, tamanho_bytes: 17, tamanho: 16` ...               |
| **3.**  | `ASCII()`     | Mostrar o **código ASCII** da das letras do nome de cada beneficiário ativo da tabela `Beneficiario`.                                    | Não possui entrada.                                | `Iara Tavares, I - 73, a - 97, r - 114, a - 97,   - 32, T - 84, a - 97, v - 118, a - 97, r - 114, e - 101, s - 115`          |
| **4.**  | `CHR()`       | Dado um código numérico, exibir o **caractere correspondente**, simulando uma decodificação de campo armazenado.    | `CODIGO = 83`                                   | `Caractere: S`                      |
| **5.**  | `CONCAT()`    | Criar uma **string formatada** unindo o nome e o CPF de cada beneficiário.                                          | `NOME = 'Foo Bar'`, `CPF = '123.456.789-00'` | `Foo Bar - 123.456.789-00`  |
| **6.**  | `INSTR()`     | Encontrar a **posição dos caracteres `.` e `-`** dentro do CPF de cada beneficiário da tabela `Beneficiario`, para identificar formato incorreto.    | Não possui entrada.                        | `569.163.815-68 - (4, 8, 12)`, `630.334.000-60 - (4, 8, 12)` ...                |
| **7.**  | `SUBSTR()`    | Extrair apenas os **três primeiros dígitos do CPF** para mascarar informações sensíveis.                            | `CPF = '123.456.789-00'`                        | `Prefixo do CPF: 123`               |
| **8.**  | `LOWER()`     | Imprimir todos os nomes de procedimentos para **minúsculas**.                              | Não possui entrada.                       | `Tomografia - tomografia`                   |
| **9.**  | `UPPER()`     | Imprimir os nomes de planos dos beneficiários para **maiúsculas**.                | `PLANO = 'premium plus'`                        | `PREMIUM PLUS`                      |
| **10.** | `TRIM()`      | Remover espaços extras do campo `NOME` antes de inseri-lo na tabela `DEPENDENTE`.                                   | `'   Ana Clara   '`                             | `'Ana Clara'`                       |
| **11.** | `REPLACE()`   | Substituir o texto `'PLANO '` por `'Plano '` nos registros, padronizando a capitalização da palavra.                | `'PLANO PREMIUM'`                               | `'Plano PREMIUM'`                   |
| **12.** | `RPAD()`      | Gerar um relatório com o nome do beneficiário **preenchido até 30 caracteres** com espaços à direita.               | `'Carlos'`                                      | `'Carlos                         '` |
| **13.** | `LPAD()`      | Exibir o ID do beneficiário formatado com zeros à esquerda para 6 dígitos.                                          | `ID = 45`                                       | `'000045'`                          |
| **14.** | `TRANSLATE()` | Remover **acentos e caracteres especiais** dos nomes de dependentes, para exportação de dados.                      | `'José Antônio'`                                | `'Jose Antonio'`                    |
| **15.** | `INITCAP()`   | Exibir o nome dos beneficiários com **a primeira letra de cada palavra maiúscula**, corrigindo inconsistências.     | `'maria da silva'`                              | `'Maria Da Silva'`                  |

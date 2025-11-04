# 🧠 01 - Fundamentos do PL/SQL

Esta seção apresenta exercícios introdutórios de **PL/SQL**, com foco na compreensão de **blocos anônimos**, **escopo de variáveis**, **operadores**, **tratamento de NULL**, e **comentários**.

Cada exercício contém um objetivo claro e a saída esperada no console (`DBMS_OUTPUT`).

---

## 📋 Lista de Exercícios

| Nº | Título | Enunciado Objetivo | Exemplo de Saída Esperada |
|----|---------|--------------------|----------------|
| **01** | **Cálculo de Incentivo de Beneficiário** | Buscar o custo do procedimento com `ID = 2`, aplicar um acréscimo de **10%** e exibir o novo valor. | `Custo atualizado: <valor_com_10_porcento>` |
| **02** | **Identificadores Inválidos** | Demonstrar erro ao tentar acessar uma coluna inexistente (`nome_x`) após um `SELECT` correto. | Erro `ORA-00904: "NOME_X": invalid identifier` |
| **03** | **Uso de Palavra Reservada como Identificador** | Declarar uma variável chamada `declare` e mostrar que o uso de palavra reservada causa erro de compilação. | Erro de sintaxe: palavra reservada usada como identificador |
| **04** | **Case Sensitivity em Identificadores** | Declarar variáveis `"Variavel"`, `"variavel"` e `"VARIAVEL"` e imprimir seus valores, mostrando diferença com e sem aspas. | Exibe valores distintos para identificadores entre aspas; acessos sem aspas podem gerar erro |
| **05** | **Comentários de Linha e Bloco** | Criar variável e incluir comentários (`--` e `/* ... */`), imprimindo o valor da variável. | `saida: 5` |
| **06** | **Declaração de Variáveis** | Declarar variáveis de diferentes tipos (`VARCHAR2`, `NUMBER`, `INTEGER`, `REAL`, `DATE`) e exibir seus valores. | Exibe todos os valores definidos com `DBMS_OUTPUT.PUT_LINE` |
| **07** | **Escopo e Visibilidade de Variáveis** | Criar blocos interno e externo com variáveis de mesmo nome e demonstrar o sombreamento (shadowing). | `55`, `2`, `3` |
| **08** | **Atualização de Dados** | Atualizar o custo do procedimento com `ID = 10`, aplicando aumento de **15%**, exibindo valores antes e depois. | `custo inicial: <valor_antigo>`<br>`custo atual: <valor_novo>` |
| **09** | **Precedência de Operadores** | Demonstrar como a ordem de precedência e o uso de parênteses alteram o resultado em expressões aritméticas. | Saídas numéricas diferentes conforme a presença de parênteses |
| **10** | **Operador IS [NOT] NULL e AND** | Demonstrar o comportamento lógico do operador `AND` considerando valores `TRUE`, `FALSE` e `NULL`. | Exibe combinações possíveis de `TRUE`, `FALSE`, `NULL` mostrando resultado de `a AND b` |
| **11** | **Comparações com NULL** | Demonstrar resultados ao comparar `NULL` usando `=`, `!=` e `IS NULL`. | Mostra que comparações com `NULL` resultam em `indeterminado`; apenas `IS NULL` é verdadeiro |
| **12** | **Operador LIKE** | Testar padrões com o operador `LIKE`, usando curingas (`%`, `_`) e mostrar se o resultado é verdadeiro ou falso. | `TRUE` / `FALSE` conforme o padrão comparado |

---

## ▶️ Como Executar os Exercícios

1. Certifique-se de estar conectado ao banco Oracle via **SQL Developer**, **SQL*Plus** ou **Docker**.
2. Ative a exibição de saídas:
   ```sql
   SET SERVEROUTPUT ON;

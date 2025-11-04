## 01 Cálculo de Incentivo de Beneficiário

Crie um bloco PL/SQL anônimo que adicione uma taxa ao custo do procedimento com ID = 2.
A taxa deve ser de 10% do custo total do procedimento.

Entrada: ID do procedimento (fixo = 2)
Saída: Exibir o valor total do custo atualizado com DBMS_OUTPUT.PUT_LINE.
Use SELECT INTO para armazenar o valor total de custo.

## 02 Identificadores Inválidos

Crie um bloco PL/SQL que demonstre o erro gerado ao tentar referenciar uma coluna com nome incorreto (por exemplo, NOME_CLIENTE ao invés de NOME).
Execute a consulta com e sem aspas para observar o comportamento.

Saída esperada: Mostre a mensagem de erro de compilação no console.

## 03 Uso de Palavra Reservada como Identificador

Crie uma tabela temporária ou variável com um nome idêntico a uma palavra reservada (exemplo: DATE).
Demonstre como declarar e usar corretamente o identificador entre aspas ("DATE") dentro do bloco PL/SQL.

Saída esperada: Exibir o valor atribuído à variável "DATE".

## 04 Case Sensitivity em Identificadores

Crie um bloco PL/SQL que declare uma variável "BeneficiarioNome" e tente acessá-la como "BENEFICIARIONOME" e "beneficiarionome".
Demonstre que PL/SQL não diferencia maiúsculas e minúsculas sem aspas, mas diferencia com aspas.

Saída esperada: Mensagem indicando qual chamada é válida.

## 05 Comentários de Linha e Bloco

Escreva um bloco PL/SQL que contenha exemplos de comentários de linha única (--) e comentários de múltiplas linhas (/* ... */).
Use um cálculo simples de custo médio de procedimentos.

Saída esperada: O resultado impresso deve ser correto, e o código deve conter ambos os tipos de comentário.

## 06 Declaração de Variáveis

Crie um bloco PL/SQL que declare variáveis de diferentes tipos:

v_nome_beneficiario VARCHAR2(100)

v_custo_total NUMBER(10,2)

v_data_hoje DATE

Atribua valores e exiba cada um com DBMS_OUTPUT.PUT_LINE.

## 07 Escopo e Visibilidade

Crie um bloco PL/SQL com um bloco interno e um externo.
No externo, declare v_status VARCHAR2(20) := 'Ativo';
No interno, declare uma variável com o mesmo nome e valor 'Inativo'.
Mostre que a variável interna sombrea a externa.

Saída esperada: Exibir 'Inativo' dentro do bloco interno e 'Ativo' fora dele.

## 08 Atualização de Dados (Salário → Custo)

Crie um bloco PL/SQL que aumente em 15% o valor do CUSTO do procedimento cujo ID = 122.
Após a atualização, exiba o valor anterior e o novo.

Entrada: ID do procedimento (fixo = 122)
Saída: Custo antigo e custo atualizado.

## 09 Precedência de Operadores

Crie um bloco PL/SQL com expressões aritméticas usando +, -, *, /, e parênteses.
Demonstre como a ordem de precedência afeta o resultado do cálculo de custos combinados.

Saída esperada: Imprimir resultados diferentes conforme o uso ou não de parênteses.

## 10 Operador IS [NOT] NULL com AND

Crie um procedimento que receba um ID_BENEFICIARIO e verifique se ele possui atendimentos e procedimentos associados.
Use IS NOT NULL e AND para retornar verdadeiro apenas se ambos existirem.

Saída esperada:
Mensagem "Beneficiário possui histórico e procedimentos" ou "Dados incompletos".

## 11 Operador IS [NOT] NULL com OR

Crie um procedimento que receba um ID_BENEFICIARIO e exiba mensagem caso existam atendimentos ou observações registradas, usando OR.

Saída esperada: "Possui algum registro de atendimento" ou "Sem registros".

## 12 Operador NOT

Crie um bloco PL/SQL que verifique o status do atendimento (STATUS = 'CANCELADO') e aplique NOT para exibir "Atendimento válido" se for diferente.

Saída esperada: Impressão do texto "Atendimento válido" ou "Cancelado".

## 13 Comparações com NULL

Demonstre o comportamento de comparações =, <> e IS NULL.
Crie um bloco PL/SQL que tente comparar NULL diretamente e depois usando IS NULL.

Saída esperada: Mostre que NULL = NULL e NULL <> NULL retornam falso, e somente IS NULL é verdadeiro.

## 14 Operador LIKE

Crie um bloco PL/SQL que selecione os nomes dos procedimentos cujo nome contenha a palavra 'CONSULTA'.
Demonstre também o uso de caracteres curinga (_ e %) e de caractere de escape (ESCAPE).

Saída esperada: Exibir a lista de procedimentos encontrados e exemplos com escape (\%).
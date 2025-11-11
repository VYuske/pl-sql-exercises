SELECT custo
FROM procedimento
WHERE id = 2;

DECLARE
	custo_atualizado REAL;
BEGIN
	SELECT custo
	INTO custo_atualizado
	FROM procedimento
	WHERE id = 2;
	custo_atualizado := custo_atualizado * 1.10;
	dbms_output.put_line('Custo atualizado: ' || custo_atualizado);
END;
/
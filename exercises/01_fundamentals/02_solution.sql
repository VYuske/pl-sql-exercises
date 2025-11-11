DECLARE
	saida VARCHAR2(200);
BEGIN
    -- CORRETO
	SELECT nome
	INTO saida
	FROM beneficiario
	WHERE id = 1;
    -- ERRADO
	SELECT nome_x
	INTO saida
	FROM beneficiario
	WHERE id = 1;
	dbms_output.put_line('saida: ' || saida);
END;
/
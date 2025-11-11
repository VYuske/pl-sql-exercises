DECLARE
	n DOUBLE PRECISION;

	FUNCTION verifica_sinal (
		n DOUBLE PRECISION
	) RETURN VARCHAR2 IS
	BEGIN
		IF n = 0.0 THEN
			RETURN 'zero';
		ELSIF n > 0.0 THEN
			RETURN 'positivo';
		ELSE
			RETURN 'negativo';
		END IF;
	END verifica_sinal;
BEGIN
	n := 0;
	dbms_output.put_line(verifica_sinal(n));
	n := -4;
	dbms_output.put_line(verifica_sinal(n));
	n := 10;
	dbms_output.put_line(verifica_sinal(n));
END;
/
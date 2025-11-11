DECLARE
	caractere VARCHAR2(1);

	FUNCTION verifica_caractere (
		caractere VARCHAR2
	) RETURN VARCHAR2 IS
	BEGIN
		IF (
			caractere >= 'A'
			AND caractere <= 'Z'
		)
		OR (
			caractere >= 'a'
			AND caractere <= 'z'
		) THEN
			RETURN 'letra';
		ELSIF (
			caractere >= '0'
			AND caractere <= '9'
		) THEN
			RETURN 'dígito';
		ELSE
			RETURN 'nao definido';
		END IF;
	END verifica_caractere;
BEGIN
	caractere := '0';
	dbms_output.put_line(verifica_caractere(caractere));
	caractere := 'A';
	dbms_output.put_line(verifica_caractere(caractere));
	caractere := 'b';
	dbms_output.put_line(verifica_caractere(caractere));
	caractere := '=';
	dbms_output.put_line(verifica_caractere(caractere));
END;
/
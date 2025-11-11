DECLARE
    ans VARCHAR2(200);

	FUNCTION verifica_primo (
		n INTEGER
	) RETURN VARCHAR2 IS
	BEGIN
		FOR i IN 2..trunc(sqrt(n)) LOOP
			IF MOD(
				n,i
			) = 0 THEN
				RETURN n || ' nao eh primo';
			END IF;
		END LOOP;

        RETURN n || ' eh primo';
	END verifica_primo;
BEGIN

    dbms_output.put_line(verifica_primo(4));
END;
/
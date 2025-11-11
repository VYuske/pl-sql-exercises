DECLARE
	n INTEGER;

	PROCEDURE imprime_impares (
		n IN INTEGER
	) IS
		i INTEGER := 0;
	BEGIN
		LOOP
			EXIT WHEN i > n;
			i := i + 1;
			IF MOD(
				i,2
			) = 0 THEN
				CONTINUE;
			END IF;
			dbms_output.put_line('i = ' || to_char(i));
		END LOOP;
	END imprime_impares;
BEGIN
	n := 7;
	imprime_impares(n);
END;
/
DECLARE
	n INTEGER;

	PROCEDURE imprime_primos (
		n IN INTEGER
	) IS
		dividendo INTEGER := 2;
		primo BOOLEAN;
	BEGIN
		LOOP
			EXIT WHEN dividendo > n;
			primo     := TRUE;
			FOR divisor IN 2..trunc(sqrt(dividendo)) LOOP
				IF MOD(
					dividendo,divisor
				) = 0 THEN
					primo := FALSE;
				END IF;
			END LOOP;

			IF primo THEN
				dbms_output.put(dividendo || ' ');
			END IF;
			dividendo := dividendo + 1;
		END LOOP;

		dbms_output.new_line;
	END imprime_primos;
BEGIN
	n := 50;
	imprime_primos(n);
END;
/
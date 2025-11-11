DECLARE
	n INTEGER;
	m INTEGER;

	PROCEDURE loop_aninhado (
		n IN INTEGER,m IN INTEGER
	) IS
		i INTEGER := 0;
		j INTEGER := 0;
	BEGIN
		LOOP
			EXIT WHEN ( i > n );
			LOOP
				EXIT WHEN ( j > m );
				dbms_output.put_line('i= '
				                     || i
				                     || ', j= ' || j);
				j := j + 1;
			END LOOP;
			j := 0;
			i := i + 1;
		END LOOP;
		dbms_output.put_line('i= '
		                     || i
		                     || ', j= ' || j);
	END loop_aninhado;
BEGIN
	n := 5;
	m := 5;
	loop_aninhado(
		n,m
	);
END;
/
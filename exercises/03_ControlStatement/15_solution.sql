<< main >> DECLARE
	x INTEGER := 10;
BEGIN
	FOR x IN 1..10 LOOP
		dbms_output.put_line('local: '
		                     || x
		                     || ', global: ' || main.x);
	END LOOP;
END;
/
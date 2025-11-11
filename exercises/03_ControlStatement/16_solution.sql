DECLARE BEGIN
	<< externo >> FOR i IN 1..10 LOOP
		<< interno >> FOR i IN 1..10 LOOP
			dbms_output.put_line('Interno: '
			                     || interno.i
			                     || ', externo: ' || externo.i);
		END LOOP;
	END LOOP;
END;
/
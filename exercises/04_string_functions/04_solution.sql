DECLARE
	codigo INTEGER;
BEGIN
	codigo := 83;
	dbms_output.put_line('Caractere: ' || chr(codigo));
END;
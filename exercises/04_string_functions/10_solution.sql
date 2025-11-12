DECLARE
	ENTRADA VARCHAR2(100);
BEGIN
	entrada := '   Ana Clara   ';
	dbms_output.put_line(trim(entrada));


	entrada := '   Teste';
	dbms_output.put_line(trim(entrada));


	entrada := 'palavra    ';
	dbms_output.put_line(trim(entrada));


	entrada := '___palavra____';
	dbms_output.put_line(trim(BOTH '_' FROM entrada));
	entrada := '___palavra____!';
	dbms_output.put_line(trim(BOTH '_' FROM entrada));
END;
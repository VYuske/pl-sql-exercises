DECLARE
	"Variavel" NUMBER := 1;
	"variavel" NUMBER := 2;
	"VARIAVEL" NUMBER := 321;
BEGIN
	dbms_output.put_line('saida: ' || "Variavel");
	dbms_output.put_line('saida: ' || "variavel");
	dbms_output.put_line('saida: ' || "VARIAVEL");
	dbms_output.put_line('saida: ' || variavel);
	dbms_output.put_line('saida: ' || variavel);
	dbms_output.put_line('saida: ' || variavel);
END;
/
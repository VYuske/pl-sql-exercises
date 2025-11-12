DECLARE
	CURSOR my_cursor IS
	SELECT nome,lengthb(nome) AS tamanho_bytes,length(nome) AS tamanho
	FROM DEPENDENTE;
BEGIN
	FOR d IN my_cursor LOOP
		dbms_output.put_line(d.nome
		                     || ', tamanho_bytes: '
		                     || d.tamanho_bytes
		                     || ', tamanho: ' || d.tamanho);
	END LOOP;
END;
/
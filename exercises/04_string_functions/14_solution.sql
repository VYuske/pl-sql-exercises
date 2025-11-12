DECLARE
	FUNCTION to_ptbr (
		text VARCHAR2
	) RETURN VARCHAR2 IS
        temp_text VARCHAR(100);
	BEGIN
		temp_text := lower(text);
		temp_text := translate(
			temp_text,'áéíóúàèìòùâêîôûãõç','aeiouaeiouaeiouaoc'
		);
		RETURN initcap(temp_text);
	END to_ptbr;
BEGIN
	FOR d IN (
		SELECT nome
		FROM dependente
	) LOOP
		dbms_output.put_line(d.nome
		                     || ' - ' || to_ptbr(d.nome));
	END LOOP;
END;
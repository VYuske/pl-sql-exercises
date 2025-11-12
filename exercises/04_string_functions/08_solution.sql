DECLARE BEGIN
	FOR p IN (
		SELECT nome
		FROM procedimento
	) LOOP
		dbms_output.put_line(p.nome|| ' - ' || lower(p.nome));
	END LOOP;
END;
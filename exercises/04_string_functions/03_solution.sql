DECLARE
	PROCEDURE solve IS
		c_auxiliar CHAR(2);
	BEGIN
		FOR b IN (
			SELECT nome
			FROM beneficiario
			WHERE ativo = 'S'
		) LOOP
			dbms_output.put(b.nome || ', ');
			FOR i IN 1..length(b.nome) LOOP
				c_auxiliar := substr(
					b.nome,i,1
				);
				dbms_output.put(c_auxiliar || '- ' || ascii(c_auxiliar) || ', ');
			END LOOP;
			dbms_output.new_line();
		END LOOP;
	END;
BEGIN
	solve;
END;
/
DROP TABLE temp_contagem_planos;
CREATE TABLE temp_contagem_planos (
	plano      VARCHAR(50),quantidade INTEGER
);

DECLARE
	q INTEGER;
	CURSOR c_planos IS
	SELECT plano, COUNT(*) AS quantidade
	FROM beneficiario
	GROUP BY plano;
BEGIN
	FOR p IN c_planos LOOP
		dbms_output.put_line(p.plano
		                     || ', ' || p.quantidade);
		INSERT INTO temp_contagem_planos (
			plano,quantidade
		) VALUES ( p.plano,p.quantidade );
	END LOOP;
END;
/

COMMIT;
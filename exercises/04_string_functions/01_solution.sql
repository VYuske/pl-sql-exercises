DECLARE
	CURSOR c_beneficiario IS SELECT nome, LENGTH(nome) AS tamanho FROM beneficiario;
BEGIN
	FOR b in c_beneficiario loop
	  dbms_output.put_line(b.nome||': '||b.tamanho);
	end loop;
END;
/


SELECT * FROM BENEFICIARIO;
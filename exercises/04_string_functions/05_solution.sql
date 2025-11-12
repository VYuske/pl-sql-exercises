DECLARE
	PROCEDURE solve
	IS
		CURSOR c_beneficiario IS SELECT nome, cpf FROM beneficiario;
	begin
		for b in c_beneficiario loop
			dbms_output.put_line(CONCAT(CONCAT(b.nome, ' - '), b.cpf));
		end loop;
	end;
begin
	solve;
end;
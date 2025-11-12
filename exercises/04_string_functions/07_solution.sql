DECLARE
	FUNCTION mask_cpf (cpf VARCHAR2)
	RETURN VARCHAR2
	IS
	begin
		RETURN substr(cpf, 1, 3);	  
	end mask_cpf;
BEGIN
	dbms_output.put_line('Prefixo do CPF: ' || mask_cpf('123.456.789-00'));
	
END;
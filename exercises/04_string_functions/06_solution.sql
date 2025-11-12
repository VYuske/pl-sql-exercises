DECLARE
	PROCEDURE verify_cpf IS
		dot_first_location INTEGER;
		dot_second_location INTEGER;
		minus_location INTEGER;
		CURSOR c_beneficiario IS
		SELECT cpf
		FROM beneficiario;
	BEGIN
		FOR b IN c_beneficiario LOOP
			dot_first_location  := instr(
				b.cpf,'.',1,1
			);
			dot_second_location := instr(
				b.cpf,'.',1,2
			);
			minus_location      := instr(
				b.cpf,'-',1,1
			);
			dbms_output.put_line(b.cpf
			                     || ' - ('
			                     || dot_first_location
			                     || ', '
			                     || dot_second_location
			                     || ', '
			                     || minus_location || ')');

		END LOOP;
	END verify_cpf;
BEGIN
	verify_cpf;
END;
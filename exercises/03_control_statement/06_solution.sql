DECLARE
	id_autorizacao INTEGER;
	resp           VARCHAR2(200);

	FUNCTION verifica_status_if_else (
		id_autorizacao INTEGER
	) RETURN VARCHAR2 IS
		p_status VARCHAR2(200);
	BEGIN
		SELECT status
		INTO p_status
		FROM autorizacao
		WHERE id = id_autorizacao;

		IF p_status = 'Aprovado' THEN
			RETURN 'A autorização foi aprovada com sucesso.';
		ELSIF p_status = 'Pendente' THEN
			RETURN 'A autorização ainda está em análise.';
		ELSIF p_status = 'Negado' THEN
			RETURN 'A autorização foi negada pelo plano.';
		ELSE
			RETURN 'Sem resultado.';
		END IF;
	END;


	FUNCTION verifica_status_case (
		id_autorizacao INTEGER
	) RETURN VARCHAR2 IS
		p_status VARCHAR2(200);
	BEGIN
		SELECT status
		INTO p_status
		FROM autorizacao
		WHERE id = id_autorizacao;

		CASE p_status
			WHEN 'Aprovado' THEN
				RETURN 'A autorização foi aprovada com sucesso.';
			WHEN 'Pendente' THEN
				RETURN 'A autorização ainda está em análise.';
			WHEN 'Negado' THEN
				RETURN 'A autorização foi negada pelo plano.';
		END CASE;
	END;
BEGIN
	id_autorizacao := 1;
	resp           := verifica_status_case(id_autorizacao);
	dbms_output.put_line(resp);
	resp           := verifica_status_if_else(id_autorizacao);
	dbms_output.put_line(resp);
END;
/
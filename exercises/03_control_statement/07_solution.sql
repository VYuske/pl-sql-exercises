DECLARE
	plano VARCHAR2(200);

	FUNCTION verifica_qt_aprovacoes (
		f_plano VARCHAR2
	) RETURN VARCHAR IS
		qt_aprovacoes INTEGER;
	BEGIN
		SELECT COUNT(*)
		  INTO qt_aprovacoes
		  FROM autorizacao a
		  JOIN beneficiario b
		ON b.id = a.beneficiario_id
		 WHERE b.plano = f_plano
		   AND a.status = 'Aprovado';

		IF qt_aprovacoes < 100 THEN
			RETURN 'Total de autorizações de beneficiários do plano Premium: '
			       || qt_aprovacoes
			       || '. Ainda há autorizações disponíveis para o plano Premium.';
		END IF;
		RETURN 'Total de autorizações de beneficiários do plano Premium: '
		       || qt_aprovacoes
		       || '. O plano Premium atingiu o limite de autorizações.';
	END verifica_qt_aprovacoes;

BEGIN
	plano := 'Premium';
	dbms_output.put_line(verifica_qt_aprovacoes(plano));
END;
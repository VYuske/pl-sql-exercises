DECLARE
	tipo     VARCHAR2(100);
	resposta VARCHAR2(500);

	PROCEDURE verifica_limite (
		p_tipo   IN VARCHAR2,
		resposta OUT VARCHAR2
	) IS
		contador INTEGER;
	BEGIN
		SELECT COUNT(*)
		INTO contador
		FROM procedimento
		WHERE tipo = p_tipo;


		resposta :=
			CASE
			    WHEN contador >= 3 THEN
			        'Procedimentos do tipo '
			        || p_tipo
			        || ': '
			        || contador
			        || '\nNão há espaço para novos procedimentos desse tipo.'
			    ELSE
			        'Procedimentos do tipo '
			        || p_tipo
			        || ': '
			        || contador
			        || '\nAinda há espaço para novos procedimentos desse tipo.'
			END;
	END;
BEGIN
	tipo := 'Exame';
	verifica_limite(
		tipo,
		resposta
	);
	dbms_output.put_line(resposta);
	tipo := 'Imagem';
	verifica_limite(
		tipo,
		resposta
	);
	dbms_output.put_line(resposta);
	tipo := 'Cirurgia';
	verifica_limite(
		tipo,
		resposta
	);
	dbms_output.put_line(resposta);
END;
/
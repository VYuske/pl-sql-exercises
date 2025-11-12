CONNECT my_user/my_password@FREEPDB1;

-- ==========================================
-- Pacote auxiliar para criação de dados
-- ==========================================
CREATE OR REPLACE PACKAGE data_generator_utils IS
	FUNCTION generate_name_random RETURN VARCHAR2;
	FUNCTION generate_kinship_random RETURN VARCHAR2;
	FUNCTION generate_birthdate_random (
		p_type VARCHAR2
	) RETURN DATE;

	FUNCTION generate_simple_cpf_random RETURN VARCHAR2;
	FUNCTION generate_medical_plan_random RETURN VARCHAR2;
	FUNCTION generate_active_account_random (
		treshould FLOAT
	) RETURN CHAR;
END data_generator_utils;
/

CREATE OR REPLACE PACKAGE BODY data_generator_utils IS
	lista_primeiros sys.odcivarchar2list := sys.odcivarchar2list(
		'Ana','Maria','João','José','Carlos','Francisco','Paulo','Pedro','Lucas','Gabriel','Rafael','Eduardo','Bruno','Marcos','Felipe','Mariana','Fernanda','Patrícia','Letícia','Júlia','Amanda','Isabela','Larissa'
		,'Camila','Bianca','Alice','Sofia','Helena','Iara','Lorena','Vitor','André','Gustavo','Daniel','Rodrigo','Thiago','Leandro','Marcelo','Ricardo','Roberto','Márcia','Luciana','Sandra','Vanessa','Tatiana','Carolina'
		,'Renata','Bruna','Beatriz','Cecília'
	);
	lista_sobrenomes sys.odcivarchar2list := sys.odcivarchar2list(
		'Silva','Santos','Oliveira','Souza','Pereira','Alves','Ferreira','Rodrigues','Gomes','Costa','Ribeiro','Martins','Barbosa','Vieira','Lima','Nascimento','Mendes','Teixeira','Rocha','Carvalho','Almeida','Lopes'
		,'Soares','Fernandes','Dias','Pinto','Correia','Castro','Cardoso','Araujo','Freitas','Moura','Morais','Campos','Ramos','Tavares','Moreira','Cavalcante','Gonçalves','Nunes','Machado','Melo','Pinto','Monteiro'
		,'Barros','Fonseca','Mendes','Teixeira','Silveira','Siqueira'
	);
	lista_parentesco sys.odcivarchar2list := sys.odcivarchar2list(
		'Filho','Filha','Cônjuge','Pai','Mãe'
	);
	lista_planos sys.odcivarchar2list := sys.odcivarchar2list(
		'Básico','Premium','Empresarial'
	);


	FUNCTION generate_name_random RETURN VARCHAR2 IS
	BEGIN
		RETURN lista_primeiros(trunc(dbms_random.value(
			1,lista_primeiros.count + 1
		)))
		       || ' '
		       || lista_sobrenomes(trunc(dbms_random.value(
			1,lista_sobrenomes.count + 1
		)));
	END generate_name_random;

	FUNCTION generate_kinship_random RETURN VARCHAR2 IS
	BEGIN
		RETURN lista_parentesco(trunc(dbms_random.value(
			1,6
		)));
	END generate_kinship_random;

	FUNCTION generate_birthdate_random (
		p_type VARCHAR2
	) RETURN DATE IS
	BEGIN
		IF upper(p_type) = 'TITULAR' THEN
            -- Adultos: 22 a 68 anos
			RETURN trunc(sysdate - dbms_random.value(
				8000,25000
			));
		ELSE
            -- Dependentes: 5 a 41 anos
			RETURN trunc(sysdate - dbms_random.value(
				2000,15000
			));
		END IF;
	END generate_birthdate_random;

	FUNCTION generate_simple_cpf_random RETURN VARCHAR2 IS
		cpf_raw VARCHAR2(11);
	BEGIN
		cpf_raw := lpad(
			trunc(dbms_random.value(
				0,99999999999
			)),11,'0'
		);

		RETURN substr(
			cpf_raw,1,3
		)
		       || '.'
		       || substr(
			cpf_raw,4,3
		)
		       || '.'
		       || substr(
			cpf_raw,7,3
		)
		       || '-'
		       || substr(
			cpf_raw,10,2
		);
	END generate_simple_cpf_random;


	FUNCTION generate_medical_plan_random RETURN VARCHAR2 IS
	BEGIN
		RETURN lista_planos(trunc(dbms_random.value(
			1,4
		)));
	END generate_medical_plan_random;


	FUNCTION generate_active_account_random (
		treshould FLOAT
	) RETURN CHAR IS
	BEGIN
		IF dbms_random.value(
			0,1
		) > treshould THEN
			RETURN 'S';
		END IF;
		RETURN 'N';
	END generate_active_account_random;
END data_generator_utils;
/
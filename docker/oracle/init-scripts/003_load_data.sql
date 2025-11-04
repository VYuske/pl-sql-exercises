CONNECT my_user/my_password@FREEPDB1;

-- =====================================================
-- POPULAÇÃO MASSIVA DE DADOS PARA BANCO DE SAÚDE
-- =====================================================

-- LIMPEZA DAS TABELAS
BEGIN
  EXECUTE IMMEDIATE 'DELETE FROM LOG_AUTORIZACAO';
  EXECUTE IMMEDIATE 'DELETE FROM HISTORICO_ATENDIMENTO';
  EXECUTE IMMEDIATE 'DELETE FROM AUTORIZACAO';
  EXECUTE IMMEDIATE 'DELETE FROM DEPENDENTE';
  EXECUTE IMMEDIATE 'DELETE FROM PROCEDIMENTO';
  EXECUTE IMMEDIATE 'DELETE FROM BENEFICIARIO';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/
COMMIT;

-- ==========================================
-- BENEFICIARIOS
-- ==========================================
DECLARE
    v_planos SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST('Básico','Premium','Empresarial');
BEGIN
    FOR i IN 1..300 LOOP
        INSERT INTO BENEFICIARIO (ID, NOME, CPF, DATA_NASCIMENTO, PLANO, ATIVO)
        VALUES (
            i,
            'Beneficiário ' || i,
            LPAD(TRUNC(DBMS_RANDOM.VALUE(10000000000, 99999999999)), 11, '0'),
            TRUNC(SYSDATE - DBMS_RANDOM.VALUE(8000, 25000)),
            v_planos(TRUNC(DBMS_RANDOM.VALUE(1, 4))),
            CASE WHEN DBMS_RANDOM.VALUE(0,1) > 0.05 THEN 'S' ELSE 'N' END
        );
    END LOOP;
END;
/
COMMIT;

-- ==========================================
-- DEPENDENTES
-- ==========================================
DECLARE
    v_parentesco SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST('Filho','Filha','Cônjuge','Pai','Mãe');
    v_id NUMBER := 1;
BEGIN
    FOR b IN 1..300 LOOP
        FOR j IN 1..TRUNC(DBMS_RANDOM.VALUE(0,4)) LOOP
            INSERT INTO DEPENDENTE (ID, BENEFICIARIO_ID, NOME, PARENTESCO, DATA_NASCIMENTO)
            VALUES (
                v_id,
                b,
                'Dependente ' || v_id,
                v_parentesco(TRUNC(DBMS_RANDOM.VALUE(1,6))),
                TRUNC(SYSDATE - DBMS_RANDOM.VALUE(2000, 15000))
            );
            v_id := v_id + 1;
        END LOOP;
    END LOOP;
END;
/
COMMIT;

-- ==========================================
-- PROCEDIMENTOS
-- ==========================================
INSERT ALL
    INTO PROCEDIMENTO VALUES (1,'Consulta Clínica Geral',150,'Consulta','S')
    INTO PROCEDIMENTO VALUES (2,'Consulta Pediátrica',180,'Consulta','S')
    INTO PROCEDIMENTO VALUES (3,'Exame de Sangue',90,'Exame','S')
    INTO PROCEDIMENTO VALUES (4,'Exame de Imagem',600,'Exame','S')
    INTO PROCEDIMENTO VALUES (5,'Ressonância Magnética',1200,'Imagem','N')
    INTO PROCEDIMENTO VALUES (6,'Ultrassonografia',350,'Imagem','S')
    INTO PROCEDIMENTO VALUES (7,'Fisioterapia',200,'Terapia','S')
    INTO PROCEDIMENTO VALUES (8,'Terapia Ocupacional',180,'Terapia','S')
    INTO PROCEDIMENTO VALUES (9,'Cirurgia Ortopédica',8000,'Cirurgia','N')
    INTO PROCEDIMENTO VALUES (10,'Internação Hospitalar',4000,'Internação','S')
    INTO PROCEDIMENTO VALUES (11,'Exame Cardiológico',400,'Exame','S')
    INTO PROCEDIMENTO VALUES (12,'Vacinação',100,'Prevenção','S')
    INTO PROCEDIMENTO VALUES (13,'Psicoterapia',250,'Terapia','S')
    INTO PROCEDIMENTO VALUES (14,'Nutricionista',200,'Consulta','S')
    INTO PROCEDIMENTO VALUES (15,'Odontologia',500,'Consulta','S')
    INTO PROCEDIMENTO VALUES (16,'Fonoaudiologia',220,'Terapia','S')
    INTO PROCEDIMENTO VALUES (17,'Exame Laboratorial Completo',300,'Exame','S')
    INTO PROCEDIMENTO VALUES (18,'Consulta Cardiologista',250,'Consulta','S')
    INTO PROCEDIMENTO VALUES (19,'Tomografia',800,'Imagem','S')
    INTO PROCEDIMENTO VALUES (20,'Exame Ginecológico',220,'Exame','S')
SELECT * FROM dual;
COMMIT;
-- ==========================================
-- AUTORIZACOES, LOGS E HISTORICO (corrigido)
-- ==========================================
DECLARE
    v_status SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST('Aprovado','Negado','Pendente');
    v_id NUMBER := 1;
BEGIN
    FOR i IN 1..1500 LOOP
        DECLARE
            v_benef NUMBER := TRUNC(DBMS_RANDOM.VALUE(1,301));
            v_proc NUMBER := TRUNC(DBMS_RANDOM.VALUE(1,21));
            v_solic DATE := TRUNC(SYSDATE - DBMS_RANDOM.VALUE(0,365));
            v_resp DATE := v_solic + TRUNC(DBMS_RANDOM.VALUE(0,5));
            v_stat VARCHAR2(20) := v_status(TRUNC(DBMS_RANDOM.VALUE(1,4)));
            v_valor NUMBER;
        BEGIN
            -- atribuição correta do valor do procedimento
            SELECT CUSTO
            INTO v_valor
            FROM PROCEDIMENTO
            WHERE ID = v_proc;

            -- Inserção na tabela AUTORIZACAO
            INSERT INTO AUTORIZACAO (
                ID, BENEFICIARIO_ID, PROCEDIMENTO_ID, DATA_SOLICITACAO, DATA_RESPOSTA, STATUS, VALOR_APROVADO
            ) VALUES (
                v_id, v_benef, v_proc, v_solic, v_resp, v_stat,
                CASE WHEN v_stat='Aprovado' THEN v_valor ELSE 0 END
            );

            -- Inserção de logs
            INSERT INTO LOG_AUTORIZACAO (ID, AUTORIZACAO_ID, DATA_EVENTO, EVENTO, USUARIO)
            VALUES (v_id, v_id, SYSTIMESTAMP - DBMS_RANDOM.VALUE(0,10), 'Solicitação criada', 'sistema_auto');

            INSERT INTO LOG_AUTORIZACAO (ID, AUTORIZACAO_ID, DATA_EVENTO, EVENTO, USUARIO)
            VALUES (v_id + 1500, v_id, SYSTIMESTAMP - DBMS_RANDOM.VALUE(0,10), 'Atualização de status', 'analista'||TRUNC(DBMS_RANDOM.VALUE(1,10)));

            -- Inserção no histórico apenas se aprovado
            IF v_stat = 'Aprovado' THEN
                INSERT INTO HISTORICO_ATENDIMENTO (
                    ID, BENEFICIARIO_ID, PROCEDIMENTO_ID, DATA_ATENDIMENTO, STATUS, OBSERVACAO
                ) VALUES (
                    v_id, v_benef, v_proc, v_resp + TRUNC(DBMS_RANDOM.VALUE(1,15)), 'Concluído', 'Procedimento realizado com sucesso'
                );
            END IF;

            v_id := v_id + 1;
        END;
    END LOOP;
END;
/
COMMIT;

PROMPT '✅ População finalizada com sucesso!'

SELECT DISTINCT plano FROM BENEFICIARIO;

DECLARE
    novo_plano VARCHAR2(300);
    id_cliente INTEGER;

    PROCEDURE atualizar_plano(novo_plano VARCHAR2, id_cliente INTEGER)
    IS
        tabela_atualizada VARCHAR2(4);
        plano_do_cliente VARCHAR2(300);
    BEGIN
        tabela_atualizada := 'No';
        SELECT b.plano into plano_do_cliente from beneficiario b where b.id = id_cliente;

        IF novo_plano IN (SELECT DISTINCT plano FROM BENEFICIARIO) AND novo_plano <> plano THEN
            UPDATE beneficiario
            SET plano = novo_plano
            WHERE id = id_cliente;

            tabela_atualizada := 'Yes';

            plano_do_cliente := novo_plano;
        END IF;

        DBMS_OUTPUT.PUT_LINE('Table updated? '||tabela_atualizada||', plano atual: '||plano||'.');

    END;
BEGIN
    /*
        Planos disponíveis: 
        Empresarial
        Premium
        Básico
    */
    novo_plano := 'Premium';
    id_cliente := 1;
    atualizar_plano(novo_plano, id_cliente);

END;
/

ROLLBACK;
/
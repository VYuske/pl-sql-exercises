SELECT DISTINCT plano FROM BENEFICIARIO;

DECLARE
    novo_plano VARCHAR2(300);
    id_cliente INTEGER;

    PROCEDURE atualizar_plano(novo_plano IN VARCHAR2, id_cliente IN INTEGER)
    IS
        tabela_atualizada VARCHAR2(4) := 'No';
        plano_do_cliente  VARCHAR2(300);
    BEGIN
        -- Busca o plano atual do cliente
        SELECT b.plano
        INTO plano_do_cliente
        FROM beneficiario b
        WHERE b.id = id_cliente;

        -- Verifica se o novo plano existe e é diferente do atual
        IF novo_plano IN ('Empresarial', 'Premium', 'Básico')
           AND novo_plano <> plano_do_cliente THEN

            UPDATE beneficiario
            SET plano = novo_plano,
                ativo = 'S'
            WHERE id = id_cliente;

            tabela_atualizada := 'Yes';
            plano_do_cliente := novo_plano;
        END IF;

        -- Exibe o resultado
        DBMS_OUTPUT.PUT_LINE('Table updated? ' || tabela_atualizada ||
                             ', plano atual: ' || plano_do_cliente || '.');
    END atualizar_plano;

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

COMMIT

ROLLBACK;
--/
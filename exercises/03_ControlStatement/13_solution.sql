DECLARE

    PROCEDURE listar_beneficiarios_ativos_sem_cursor
    IS
    begin
        for b IN (SELECT nome, plano, ativo FROM beneficiario)
        loop
          CONTINUE WHEN b.ativo = 'N';
          DBMS_OUTPUT.put_line('Beneficiário ativo: '||b.nome||' - Plano: '||b.plano);
        end loop;  
    end listar_beneficiarios_ativos_sem_cursor;


    PROCEDURE listar_beneficiarios_ativos_com_cursor
    IS
        CURSOR c_beneficiarios IS SELECT nome, plano, ativo FROM beneficiario;
    begin
        for b IN c_beneficiarios
        loop
          CONTINUE WHEN b.ativo = 'N';
          DBMS_OUTPUT.put_line('Beneficiário ativo: '||b.nome||' - Plano: '||b.plano);
        end loop;  
    end listar_beneficiarios_ativos_com_cursor;
BEGIN
    listar_beneficiarios_ativos_sem_cursor;
    listar_beneficiarios_ativos_com_cursor;
END;
/
DECLARE
BEGIN
    for B IN (SELECT nome FROM beneficiario) loop
        DBMS_OUTPUT.put_line(RPAD(b.nome, 30, '-'));
    end loop;
END;
DECLARE
    text VARCHAR2(100);
BEGIN
    FOR p in (SELECT id, nome FROM procedimento) loop
        text := REPLACE(p.nome, ' ', '-');
        UPDATE procedimento SET nome = text WHERE id = p.id;
        dbms_output.put_line(text);
    end loop;
END;
/

ROLLBACK;
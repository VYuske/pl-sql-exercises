DECLARE
BEGIN
    for B IN (SELECT id FROM dependente) loop
        DBMS_OUTPUT.put_line(LPAD(b.id, 6, '0'));
    end loop;
END;
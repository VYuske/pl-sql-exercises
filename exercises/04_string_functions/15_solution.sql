DECLARE
BEGIN

    for l in (SELECT evento FROM log_autorizacao) loop
        dbms_output.put_line(INITCAP(l.evento));
    end loop;
END;
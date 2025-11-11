DECLARE
    n INTEGER := 0;

    PROCEDURE loop_exit_when (n IN INTEGER)
    IS
        i INTEGER := 0;
    begin
        LOOP
            exit when (i > n);
            DBMS_OUTPUT.put_line('Dentro do loop: '|| i);
            i := i + 1;
        END LOOP;  
            DBMS_OUTPUT.put_line('Fora do loop: '|| i);
    end loop_exit_when;
BEGIN
    n := 5;
    loop_exit_when(n);
END;
/
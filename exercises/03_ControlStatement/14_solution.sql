DECLARE
    n INTEGER;

    PROCEDURE print_values (n IN INTEGER)
    IS
        value INTEGER := 1;
    begin
        LOOP
            EXIT WHEN (3 * n + 1) <= value;
            DBMS_OUTPUT.PUT_LINE(value);
            value := value + 3;
        END LOOP;
    end print_values;
BEGIN

    n := 5;
    print_values(n);
END;
/
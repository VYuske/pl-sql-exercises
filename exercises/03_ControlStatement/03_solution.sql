DECLARE
    n INTEGER;

    FUNCTION verifica_par_ou_impar(n INTEGER)
    RETURN VARCHAR2
    IS
    BEGIN
        IF MOD(n, 2) = 0 THEN
            RETURN 'O numero e par';
        ELSE
            RETURN 'O numero e impar';
        END IF;
    END;
BEGIN
    n := 2;
    DBMS_OUTPUT.PUT_LINE('n: '||n);
    DBMS_OUTPUT.PUT_LINE(verifica_par_ou_impar(n));

    n := 5;
    DBMS_OUTPUT.PUT_LINE('n: '||n);
    DBMS_OUTPUT.PUT_LINE(verifica_par_ou_impar(n));

    n := 1;
    DBMS_OUTPUT.PUT_LINE('n: '||n);
    DBMS_OUTPUT.PUT_LINE(verifica_par_ou_impar(n));

    n := 0;
    DBMS_OUTPUT.PUT_LINE('n: '||n);
    DBMS_OUTPUT.PUT_LINE(verifica_par_ou_impar(n));
END;
/
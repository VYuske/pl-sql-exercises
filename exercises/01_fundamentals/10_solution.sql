DECLARE
    a BOOLEAN;
    b BOOLEAN;
    c BOOLEAN;

    -- Procedure para calcular o AND lógico
    PROCEDURE a_and_b(a IN BOOLEAN, b IN BOOLEAN, c OUT BOOLEAN) IS
    BEGIN
        IF a IS NULL OR b IS NULL THEN
            c := NULL;
        ELSE
            c := a AND b;
        END IF;
    END;

    -- Função auxiliar para exibir valores booleanos
    FUNCTION bool_to_char(x BOOLEAN) RETURN VARCHAR2 IS
    BEGIN
        IF x IS NULL THEN
            RETURN 'NULL';
        ELSIF x THEN
            RETURN 'TRUE';
        ELSE
            RETURN 'FALSE';
        END IF;
    END;
BEGIN
    -- 1º caso
    a := TRUE; b := TRUE;
    a_and_b(a, b, c);
    DBMS_OUTPUT.PUT_LINE(bool_to_char(a) || ' ' || bool_to_char(b) || ' ' || bool_to_char(c));

    -- 2º caso
    a := TRUE; b := FALSE;
    a_and_b(a, b, c);
    DBMS_OUTPUT.PUT_LINE(bool_to_char(a) || ' ' || bool_to_char(b) || ' ' || bool_to_char(c));

    -- 3º caso
    a := FALSE; b := TRUE;
    a_and_b(a, b, c);
    DBMS_OUTPUT.PUT_LINE(bool_to_char(a) || ' ' || bool_to_char(b) || ' ' || bool_to_char(c));

    -- 4º caso
    a := FALSE; b := FALSE;
    a_and_b(a, b, c);
    DBMS_OUTPUT.PUT_LINE(bool_to_char(a) || ' ' || bool_to_char(b) || ' ' || bool_to_char(c));

    -- 5º caso
    a := TRUE; b := NULL;
    a_and_b(a, b, c);
    DBMS_OUTPUT.PUT_LINE(bool_to_char(a) || ' ' || bool_to_char(b) || ' ' || bool_to_char(c));

    -- 6º caso
    a := FALSE; b := NULL;
    a_and_b(a, b, c);
    DBMS_OUTPUT.PUT_LINE(bool_to_char(a) || ' ' || bool_to_char(b) || ' ' || bool_to_char(c));

    -- 7º caso
    a := NULL; b := NULL;
    a_and_b(a, b, c);
    DBMS_OUTPUT.PUT_LINE(bool_to_char(a) || ' ' || bool_to_char(b) || ' ' || bool_to_char(c));
END;
/

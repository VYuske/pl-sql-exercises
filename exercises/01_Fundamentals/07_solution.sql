DECLARE
    var_1 INTEGER := 5;
    var_2 INTEGER := 2;
BEGIN

    DECLARE
        var_1 INTEGER := 55;
        var_3 INTEGER := 3;
    BEGIN
        /*

        var_1 vai assumir valor do escopo interno
        var_2 vai ter valor do escopo externo
        var_3 é variável interna e vai apresentar seu valor definido
        
        */

        DBMS_OUTPUT.PUT_LINE(var_1);
        DBMS_OUTPUT.PUT_LINE(var_2);
        DBMS_OUTPUT.PUT_LINE(var_3);
    END;

END;
/
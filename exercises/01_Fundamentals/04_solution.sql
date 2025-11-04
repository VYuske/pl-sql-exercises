DECLARE
    "Variavel" NUMBER := 1;
    "variavel" NUMBER := 2;
    "VARIAVEL" NUMBER := 321;
BEGIN
    DBMS_OUTPUT.PUT_LINE('saida: '||"Variavel");
    DBMS_OUTPUT.PUT_LINE('saida: '||"variavel");
    DBMS_OUTPUT.PUT_LINE('saida: '||"VARIAVEL");
    DBMS_OUTPUT.PUT_LINE('saida: '||Variavel);
    DBMS_OUTPUT.PUT_LINE('saida: '||variavel);
    DBMS_OUTPUT.PUT_LINE('saida: '||VARIAVEL);
END;
/
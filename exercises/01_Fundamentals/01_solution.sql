DECLARE
    custo_atualizado REAL;
BEGIN
    SELECT custo INTO custo_atualizado FROM procedimento WHERE id = 2;
    custo_atualizado := custo_atualizado * 1.10;
    DBMS_OUTPUT.PUT_LINE('O custo é de '||custo_atualizado);
END;
/
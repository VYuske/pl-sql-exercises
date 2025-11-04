DECLARE
    my_varchar VARCHAR2(200) := 'texto texto texto';
    my_number NUMBER := 5.5;
    my_integer INTEGER := 11;
    my_real REAL := 5.159;
    my_date DATE := TO_DATE('2025-11-04 10:30:00', 'YYYY-MM-DD HH24:MI:SS');
BEGIN
    DBMS_OUTPUT.PUT_LINE('my_varchar: '||my_varchar);
    DBMS_OUTPUT.PUT_LINE('my_number: '||my_number);
    DBMS_OUTPUT.PUT_LINE('my_integer: '||my_integer);
    DBMS_OUTPUT.PUT_LINE('my_real: '||my_real);
    DBMS_OUTPUT.PUT_LINE('my_date: '||my_date);
END;
/
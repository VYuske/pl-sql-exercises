declare
   m number;
   n number;
   out number;
begin
    m := 1;
    n := NULL;
    if m != n then
      dbms_output.put_line('m != n');
    elsif m = n then
        dbms_output.put_line('m = n');
    else
        dbms_output.put_line('Não é possível dizer se são iguais ou não');
    end if;


    m := NULL;
    n := NULL;
    if m != n then
      dbms_output.put_line('m != n');
    elsif m = n then
        dbms_output.put_line('m = n');
    else
        dbms_output.put_line('Não é possível dizer se são iguais ou não');
    end if;


    m := 4;
    n := 9;
    IF (m > n) THEN
        out := m;
    ELSE
        out := n;
    END IF;
    DBMS_OUTPUT.PUT_LINE('saida : '||out);
  
end;
/
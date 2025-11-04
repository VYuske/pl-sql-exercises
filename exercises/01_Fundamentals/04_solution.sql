declare
   "Variavel" number := 1;
   "variavel" number := 2;
   "VARIAVEL" number := 321;
begin
   dbms_output.put_line('saida: ' || "Variavel");
   dbms_output.put_line('saida: ' || "variavel");
   dbms_output.put_line('saida: ' || "VARIAVEL");
   dbms_output.put_line('saida: ' || variavel);
   dbms_output.put_line('saida: ' || variavel);
   dbms_output.put_line('saida: ' || variavel);
end;
/
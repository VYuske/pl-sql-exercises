declare
   n integer;

   function verifica_par_ou_impar (
      n integer
   ) return varchar2 is
   begin
      if mod(
         n,
         2
      ) = 0 then
         return 'O numero e par';
      else
         return 'O numero e impar';
      end if;
   end;
begin
   n := 2;
   dbms_output.put_line('n: ' || n);
   dbms_output.put_line(verifica_par_ou_impar(n));
   n := 5;
   dbms_output.put_line('n: ' || n);
   dbms_output.put_line(verifica_par_ou_impar(n));
   n := 1;
   dbms_output.put_line('n: ' || n);
   dbms_output.put_line(verifica_par_ou_impar(n));
   n := 0;
   dbms_output.put_line('n: ' || n);
   dbms_output.put_line(verifica_par_ou_impar(n));
end;
/
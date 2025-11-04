declare
   var_1 integer := 5;
   var_2 integer := 2;
begin
   declare
      var_1 integer := 55;
      var_3 integer := 3;
   begin
        /*

        var_1 vai assumir valor do escopo interno
        var_2 vai ter valor do escopo externo
        var_3 é variável interna e vai apresentar seu valor definido
        
        */

      dbms_output.put_line(var_1);
      dbms_output.put_line(var_2);
      dbms_output.put_line(var_3);
   end;
end;
/
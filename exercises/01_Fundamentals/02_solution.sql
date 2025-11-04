declare
   saida varchar2(200);
begin
    -- CORRETO
   select nome
     into saida
     from beneficiario
    where id = 1;
    -- ERRADO
   select nome_beneficiario
     into saida
     from beneficiario
    where id = 1;
   dbms_output.put_line('saida: ' || saida);
end;
/
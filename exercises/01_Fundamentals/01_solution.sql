declare
   custo_atualizado real;
begin
   select custo
     into custo_atualizado
     from procedimento
    where id = 2;
   custo_atualizado := custo_atualizado * 1.10;
   dbms_output.put_line('O custo é de ' || custo_atualizado);
end;
/
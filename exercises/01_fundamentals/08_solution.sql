declare
   custo_procedimento number;
   id_procedimento    integer := 10;
begin
   select custo
     into custo_procedimento
     from procedimento
    where id = id_procedimento;

   dbms_output.put_line('custo inicial: ' || custo_procedimento);
   custo_procedimento := custo_procedimento * 1.15;
   update procedimento
      set
      custo = custo_procedimento
    where id = id_procedimento;

   dbms_output.put_line('custo atual: ' || custo_procedimento);
end;
/

-- rollback adicionado para manter o mesmo output. Desfaz as ações não afetadas pelo comando COMMIT
rollback;
/
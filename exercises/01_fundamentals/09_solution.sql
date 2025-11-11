declare
   salary     number := 40000;
   commission number := 0.15;
begin
  -- Division has higher precedence than addition:

   dbms_output.put_line('8 + 20 / 4 = ' ||(8 + 20 / 4));
   dbms_output.put_line('20 / 4 + 8 = ' ||(20 / 4 + 8));
  
 -- Parentheses override default operator precedence:

   dbms_output.put_line('7 + 9 / 3 = ' ||(7 + 9 / 3));
   dbms_output.put_line('(7 + 9) / 3 = ' ||((7 + 9) / 3));
 
  -- Most deeply nested operation is evaluated first:

   dbms_output.put_line('30 + (30 / 6 + (15 - 8)) = ' ||(30 +(30 / 6 +(15 - 8))));
 
  -- Parentheses, even when unnecessary, improve readability:

   dbms_output.put_line('(salary * 0.08) + (commission * 0.12) = ' ||((salary * 0.08) +(commission * 0.12)));

   dbms_output.put_line('salary * 0.08 + commission * 0.12 = ' ||(salary * 0.08 + commission * 0.12));
end;
/
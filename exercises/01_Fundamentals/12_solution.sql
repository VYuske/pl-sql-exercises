declare
   procedure pat_match (
      test_string varchar2,
      pattern     varchar2
   ) is
   begin
      if test_string like pattern then
         dbms_output.put_line('TRUE');
      else
         dbms_output.put_line('FALSE');
      end if;
   end;
begin
   pat_match(
      'Blweate',
      'B%a_e'
   );
   pat_match(
      'Blweate',
      'B%A_E'
   );
end;
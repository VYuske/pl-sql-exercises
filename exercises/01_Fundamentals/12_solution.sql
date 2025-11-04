declare
   procedure pattern_match (
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
   pattern_match(
      'Blweate',
      'B%a_e'
   );
   pattern_match(
      'Blweate',
      'B%A_E'
   );
end;
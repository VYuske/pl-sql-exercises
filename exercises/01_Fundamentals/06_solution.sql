declare
   my_varchar varchar2(200) := 'texto texto texto';
   my_number  number := 5.5;
   my_integer integer := 11;
   my_real    real := 5.159;
   my_date    date := to_date ( '2025-11-04 10:30:00','YYYY-MM-DD HH24:MI:SS' );
begin
   dbms_output.put_line('my_varchar: ' || my_varchar);
   dbms_output.put_line('my_number: ' || my_number);
   dbms_output.put_line('my_integer: ' || my_integer);
   dbms_output.put_line('my_real: ' || my_real);
   dbms_output.put_line('my_date: ' || my_date);
end;
/
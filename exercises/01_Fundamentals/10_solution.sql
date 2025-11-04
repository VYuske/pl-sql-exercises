create or replace procedure a_and_b (
   a in boolean,
   b in boolean,
   c out boolean
) is
begin
   c :=
      a
      and b;
end;
/


DECLARE
   a boolean;
   b boolean;
   c boolean;
BEGIN
    a := TRUE;
    b := TRUE;
    a_and_b(a, b, c);
    dbms_output.put_line(a||' '||b||' '||c);

    a := TRUE;
    b := FALSE;
    a_and_b(a, b, c);
    dbms_output.put_line(a||' '||b||' '||c);

    a := FALSE;
    b := TRUE;
    a_and_b(a, b, c);
    dbms_output.put_line(a||' '||b||' '||c);

    a := FALSE;
    b := FALSE;
    a_and_b(a, b, c);
    dbms_output.put_line(a||' '||b||' '||c);

    a := TRUE;
    b := NULL;
    a_and_b(a, b, c);
    dbms_output.put_line(a||' '||b||' '||c);

    a := FALSE;
    b := NULL;
    a_and_b(a, b, c);
    dbms_output.put_line(a||' '||b||' '||c);

    a := NULL;
    b := NULL;
    a_and_b(a, b, c);
    dbms_output.put_line(a||' '||b||' '||c);
end;
/
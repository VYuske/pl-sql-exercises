DECLARE
	num_small NUMBER;
	num_large NUMBER;

	PROCEDURE sort_two (
		num_small IN OUT NUMBER,
		num_large IN OUT NUMBER
	) IS
		aux NUMBER;
	BEGIN
		IF num_small > num_large THEN
			aux       := num_large;
			num_large := num_small;
			num_small := aux;
		END IF;
	END sort_two;
BEGIN
	num_small := 5;
	num_large := 12;
	sort_two(
		num_small,
		num_large
	);
	dbms_output.put_line('small: '
	                     || num_small
	                     || ', large: ' || num_large);
	num_small := 13;
	num_large := 1;
	sort_two(
		num_small,
		num_large
	);
	dbms_output.put_line('small: '
	                     || num_small
	                     || ', large: ' || num_large);
END;
/
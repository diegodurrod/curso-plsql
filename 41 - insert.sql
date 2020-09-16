SET SERVEROUTPUT ON
DECLARE
    VAR1 test.column1%TYPE := 1;
    VAR2 test.column2%type := 'aaaaa';
BEGIN
    INSERT INTO TEST (column1, column2) VALUES (var1, var2);
    COMMIT;
END;   
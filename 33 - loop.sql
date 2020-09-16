SET SERVEROUTPUT ON
DECLARE
    num NUMBER := 5;
    i NUMBER := 1;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE(num || ' * ' || i || ' = ' || num * i);
        i := i + 1;
        EXIT WHEN i = 11;
    END LOOP;
END;
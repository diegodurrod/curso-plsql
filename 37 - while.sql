SET SERVEROUTPUT ON
DECLARE
    flag BOOLEAN := false;
    x INTEGER := 0;
BEGIN
    WHILE x < 15 LOOP
        DBMS_OUTPUT.PUT_LINE(x);
        x := x + 1;
    END LOOP;
    
END;
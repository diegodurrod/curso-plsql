SET SERVEROUTPUT ON
DECLARE 
    x INTEGER := 0;
BEGIN
    <<ejemploContinue>> LOOP
        x := x + 1;
        CONTINUE WHEN X = 2;
        DBMS_OUTPUT.PUT_LINE(x);
        EXIT ejemploContinue WHEN x = 5;
    END LOOP;
END;
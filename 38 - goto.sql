SET SERVEROUTPUT ON
DECLARE
    flag BOOLEAN := true;
BEGIN
    IF flag THEN
        GOTO verdadero;
    ELSE
        GOTO falso;
    END IF;
    
    <<verdadero>>
    DBMS_OUTPUT.PUT_LINE('verdadero');
    
    <<falso>>
    DBMS_OUTPUT.PUT_LINE('falso');
END;
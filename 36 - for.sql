SET SERVEROUTPUT ON
BEGIN
    -- Cuidado, el indice dentro del bucle for, no se debe de declarar para utilizarlo
    FOR i IN 0..10 LOOP
        DBMS_OUTPUT.PUT_LINE (i);
    END LOOP;
    
    FOR i IN REVERSE 0..10 LOOP
        DBMS_OUTPUT.PUT_LINE (i);
    END LOOP;
END;
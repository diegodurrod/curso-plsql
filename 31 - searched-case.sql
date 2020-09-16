SET SERVEROUTPUT ON
DECLARE 
    bueno BOOLEAN := FALSE;
    bonito BOOLEAN := TRUE;
    barato BOOLEAN := TRUE;
    
BEGIN
    CASE
        WHEN bueno AND bonito AND NOT barato THEN
            DBMS_OUTPUT.PUT_LINE('Lo que es bueno y bonito no puede ser barato');
        WHEN bueno AND barato AND NOT bonito THEN
            DBMS_OUTPUT.PUT_LINE('Lo que es bueno y barato no puede ser bonito');
        WHEN bonito AND barato AND NOT bueno THEN
            DBMS_OUTPUT.PUT_LINE('Lo que es bonito y barato no puede ser bueno. Es de IKEA');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Chollo');
    END CASE;

END;
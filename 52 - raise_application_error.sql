SET SERVEROUTPUT ON
DECLARE
    regn NUMBER;
    regt VARCHAR2(200);
BEGIN
    regn := 101;
    regt := 'ASIA';
    
    IF regn > 100 THEN
        -- EL CÓDIGO DE ERROR DEBE DE ESTAR ENTRE -20000 Y -20999
        RAISE_APPLICATION_ERROR(-20001, 'La id no puede ser mayor de 100');
    ELSE
        INSERT INTO REGIONS VALUES (regn, regt);
        COMMIT;
    END IF;
    
END;
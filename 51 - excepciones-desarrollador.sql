SET SERVEROUTPUT ON
DECLARE
    EXCPT EXCEPTION;
    regn NUMBER;
    regt VARCHAR2(200);
BEGIN
    regn := 100;
    regt := 'ASIA';
    
    IF regn > 100 THEN
        RAISE EXCPT;
    ELSE
        INSERT INTO REGIONS VALUES (regn, regt);
        COMMIT;
    END IF;
    
    EXCEPTION
        WHEN EXCPT THEN
            dbms_output.put_line('Región no permitida');
        WHEN OTHERS THEN
            dbms_output.put_line('Error indefinido');
END;
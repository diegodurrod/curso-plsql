SET SERVEROUTPUT ON
DECLARE
    CURSOR C1 IS SELECT * FROM REGIONS;
    V1 REGIONS%ROWTYPE;
BEGIN
    OPEN C1;
    LOOP
        FETCH c1 INTO v1;
        EXIT WHEN c1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(v1.region_name);
    END LOOP;
    CLOSE C1;
    
    -- Cómo recorrer el cursor mediante un bucle for
    FOR i IN C1 LOOP
        DBMS_OUTPUT.PUT_LINE(i.region_name);
    END LOOP;
    
    -- Declaración de un cursor dentro del mismo for
    FOR i IN (SELECT * FROM REGIONS) LOOP
        DBMS_OUTPUT.PUT_LINE(i.region_name);
    END LOOP;

END;
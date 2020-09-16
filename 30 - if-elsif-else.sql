SET SERVEROUTPUT ON

DECLARE
    sales    INTEGER := 100;
    bonus    INTEGER := 0;
    result   VARCHAR2(50);
BEGIN
    IF sales = 1000 THEN
        bonus := 10;
        result := 'Igual a 1000. Bonus ' || bonus;
    ELSIF sales > 1000 THEN
        bonus := 20;
        result := 'Mayor de 1000. Bonus ' || bonus;
    ELSE
        result := 'Menor a 1000. Bonus ' || bonus;
    END IF;

    dbms_output.put_line(result);
END;
SET SERVEROUTPUT ON
DECLARE
    num INTEGER := 1;
BEGIN
    CASE num
        WHEN 1 THEN
            num := 2;
        WHEN 2 THEN
            num := 3;
        WHEN 3 THEN
            num := 4;
        WHEN 4 THEN
            num := 5;
        WHEN 5 THEN
            num := 6;
        ELSE num := 0;
    END CASE;
    
    DBMS_OUTPUT.put_line(num);

END;
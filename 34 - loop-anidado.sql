SET SERVEROUTPUT ON
DECLARE
    stopi INTEGER := 5;    
    stopj INTEGER := 3;
    i stopi%TYPE := 0;
    j stopj%TYPE := 0;
BEGIN
    <<loopi>> LOOP
        <<loopj>> LOOP
            DBMS_OUTPUT.PUT_LINE('Valor i ' || i || ', valor j ' || j);
            j := j+1;
            EXIT loopj WHEN (j > stopj);
        END LOOP;
        j := 0;
        i := i+1;
        EXIT loopi WHEN (i > stopi);
    END LOOP;
END;
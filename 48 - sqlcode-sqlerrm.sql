SET SERVEROUTPUT ON
DECLARE
    EMPL EMPLOYEES%ROWTYPE;
BEGIN
    SELECT * INTO EMPL FROM EMPLOYEES;
    DBMS_OUTPUT.put_line(EMPL.SALARY);
    
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(SQLCODE);
            DBMS_OUTPUT.put_line(SQLERRM);
            
    -- Hay que tener en cuenta que las funciones SQLCODE y SQLERRM no son nativas de SQL, por lo que si se quieren pasar 
    -- a SQL deberíamos de declarar variables y asignar los valores a estas
END;
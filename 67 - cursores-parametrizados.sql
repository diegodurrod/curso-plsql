-- Se pretende sacar aquellos empleados que cobren más de 1000 unidades monetarias mediante un cursor
SET SERVEROUTPUT ON
DECLARE
    CURSOR c1(SAL employees.salary%TYPE) IS SELECT * FROM employees WHERE salary > SAL;
    V1 EMPLOYEES%ROWTYPE;
    
BEGIN
    OPEN C1(1000);
    LOOP
        FETCH c1 INTO v1;
        EXIT WHEN C1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(v1.first_name || ' ' || v1.salary);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(c1%rowcount || ' Coincidencias encontradas');
    CLOSE C1;

END;
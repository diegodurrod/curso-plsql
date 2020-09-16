SET SERVEROUTPUT ON
DECLARE
    empleado EMPLOYEES%ROWTYPE; -- Sería como usar la interfaz de tipo EMPLOYEES a grandes rasgos
BEGIN
    -- SELECT * INTO empleado FROM EMPLOYEES WHERE EMPLOYEE_ID = 101;
    -- DBMS_OUTPUT.put_line(empleado.first_name || ' ' || empleado.last_name || ' ' || empleado.salary);
    
    FOR i IN 0..100 LOOP
        SELECT * INTO empleado FROM EMPLOYEES WHERE EMPLOYEE_ID = (100 + i);
        DBMS_OUTPUT.put_line(empleado.first_name || ' ' || empleado.last_name || ' ' || empleado.salary);    
    END LOOP;

END;
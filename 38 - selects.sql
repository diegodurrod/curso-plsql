SET SERVEROUTPUT ON
DECLARE
    salary employees.salary%TYPE;
    name employees.first_name%TYPE;
    
BEGIN
    -- Cuidado, con este código sólo se puede devolver una fila
    SELECT salary, first_name INTO salary, name FROM employees WHERE employee_id = 100;
    dbms_output.put_line(name || ' ' || salary);
END;
    
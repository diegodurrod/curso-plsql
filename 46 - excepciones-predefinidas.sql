SET SERVEROUTPUT ON

DECLARE
    steven   employees%rowtype;
BEGIN
    SELECT
        *
    INTO steven
    FROM
        employees
    WHERE
        employee_id = 1000;

    dbms_output.put_line(steven.first_name);
EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('No hay datos para mostrar');
    WHEN too_many_rows THEN
        dbms_output.put_line('Salida con demasiadas líneas');
    WHEN OTHERS THEN
        dbms_output.put_line('Error inesperado');
END;
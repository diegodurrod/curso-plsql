SET SERVEROUTPUT ON

DECLARE
    TYPE emple IS RECORD (
        nombre    VARCHAR2(100),
        salario   NUMBER,
        fecha     employees.hire_date%TYPE,
        datos     employees%rowtype
    );
    
    empleado emple;
BEGIN
    SELECT
        *
    INTO
        empleado
    .datos
    FROM
        employees
    WHERE
        employee_id = 100;

    empleado.nombre := empleado.datos.first_name
                       || ' '
                       || empleado.datos.last_name;

    empleado.salario := empleado.datos.salary * 0.8;
    empleado.fecha := empleado.datos.hire_date;
    dbms_output.put_line(empleado.nombre);
    dbms_output.put_line(empleado.salario);
    dbms_output.put_line(empleado.fecha);
END;
SET SERVEROUTPUT ON

DECLARE 
    var1 number := 1;
    var2 var1%type := 3;
    emp employees.first_name%type := 'Pepe';
BEGIN
    DBMS_OUTPUT.PUT_LINE(var1);
    DBMS_OUTPUT.put_line(var2);
    DBMS_OUTPUT.PUT_LINE(emp);

END;
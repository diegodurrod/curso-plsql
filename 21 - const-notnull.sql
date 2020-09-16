SET SERVEROUTPUT ON

DECLARE
    const   CONSTANT NUMBER := 0.1;
    nn      VARCHAR2(50) NOT NULL := 'Variable no nula';
    va      VARCHAR2(60) := 'variable';
BEGIN
    dbms_output.put_line(const);
    dbms_output.put_line(nn);
    dbms_output.put_line(va);
END;
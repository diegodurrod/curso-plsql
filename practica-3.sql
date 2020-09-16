SET SERVEROUT ON
DECLARE
    IMPUESTO CONSTANT NUMBER:= 21;
    precio NUMBER(5,2);
    resultado precio%TYPE;

BEGIN
    precio := 22.50;
    resultado := precio * IMPUESTO / 100;
    DBMS_OUTPUT.PUT_LINE('El precio final para el producto es ' || resultado);

END;
    
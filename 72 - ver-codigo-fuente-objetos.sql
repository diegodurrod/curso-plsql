-- Cómo poder visualizar en forma de texto todos los procedimientos almacenados de la base de datos
-- USER_OBJECTS
SELECT *
FROM USER_OBJECTS
WHERE OBJECT_TYPE = 'PROCEDURE';

-- Mostrar la cantidad de objetos agrupados por estos
SELECT OBJECT_TYPE, COUNT(*) 
FROM USER_OBJECTS
GROUP BY OBJECT_TYPE;

-- Mostrar el código fuente de una función
SELECT *
FROM USER_SOURCE
WHERE NAME = 'PR1';
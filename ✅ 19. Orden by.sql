/*<!---------------------------------------------------------------------------------------------------------|
|------------------------------------------------------------------------------------------------------------|
| NOMBRE    :  DANNY JOSE JIMENEZ GUTIERREZ                                                                  |
| CEDULA    :  16.029.567                                                                                    |
| TELEFONO  :  0424-281-44-55                                                                                |
| CORREO    :  DENNALY88@GMAIL.COM                                                                           |
|------------------------------------------------------------------------------------------------------------|
|  CURSO    : MYSQL                                                                                          |
|  DESARROLLADOR WEB                                                                                         |
|  MIRANDA , CUA  2025                                                                                       |
-------------------------------------------------------------------------------------------------------------|
----------------------------------------------------------------------------------------------------------->*/


/----------------------------------------------------------/
     ORDEN BY
/---------------------------------------------------------/

/*
    El comando ORDER BY se utiliza para ordenar los resultados de una consulta en orden ascendente (ASC) o descendente (DESC)
*/

SELECT nombre, edad
FROM empleados
ORDER BY edad ASC;  -- Ordenar por edad en orden ascendente


SELECT nombre, salario
FROM empleados
ORDER BY salario DESC;  -- Ordenar por salario en orden descendente

SELECT nombre, departamento, salario
FROM empleados
ORDER BY departamento ASC, salario DESC;  -- Ordenar por departamento y luego por salario en



/*<!---------------------------------------------------------------------------------------------------------|
|------------------------------------------------------------------------------------------------------------|
| NOMBRE    :  DANNY JOSE JIMENEZ GUTIERREZ                                                                  |
| CEDULA    :  16.029.567                                                                                    |
| TELEFONO  :  0424-281-44-55                                                                                |
| CORREO    :  DENNALY88@GMAIL.COM                                                                           |
|------------------------------------------------------------------------------------------------------------|
|  CURSO    : MYSQL                                                                                          |
|  DESARROLLADOR WEB                                                                                         |
|  MIRANDA , CUA  2025                                                                                       |
-------------------------------------------------------------------------------------------------------------|
----------------------------------------------------------------------------------------------------------->*/






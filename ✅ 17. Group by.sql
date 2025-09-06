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
     GROUP BY   
/---------------------------------------------------------/


/*
   El comando GROUP BY se utiliza para agrupar filas que tienen los mismos valores en columnas especificadas
   y se utiliza comúnmente con funciones de agregación (COUNT, SUM, AVG, MAX, MIN) para realizar cálculos en cada grupo
*/

SELECT producto, SUM(monto) AS total_ventas
FROM ventas
GROUP BY producto;


SELECT carrera, COUNT(id_estudiante) AS total_estudiantes
FROM estudiantes
GROUP BY carrera;

SELECT region, estado_pedido, COUNT(*) AS numero_pedidos
FROM pedidos
GROUP BY region, estado_pedido;


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
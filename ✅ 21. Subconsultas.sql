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
     Subconsultas
/---------------------------------------------------------/

/*

Tipos de subconsultas

Hay varios tipos de subconsultas, clasificadas según su uso y la cantidad de filas que devuelven:

Subconsultas escalares: Devuelven un solo valor (una fila y una columna). Se utilizan comúnmente en 
las cláusulas WHERE, SELECT o HAVING para comparar un valor.

Subconsultas de una sola columna y múltiples filas: Devuelven múltiples filas pero solo una columna. 
Se utilizan con operadores como IN, ANY, ALL o EXISTS.

Subconsultas correlacionadas: Dependen de la consulta externa para cada fila que procesan.
 A diferencia de las subconsultas no correlacionadas, que se ejecutan una sola vez, una subconsulta correlacionada se ejecuta una vez por cada fila procesada por la consulta externa.

*/

SELECT nombre, apellido
FROM empleados
WHERE departamento_id = (SELECT departamento_id FROM departamentos WHERE nombre_departamento = 'Ventas');


SELECT nombre, apellido, (SELECT nombre_departamento FROM departamentos WHERE departamentos.departamento_id = empleados.departamento_id) AS nombre_departamento
FROM empleados;

SELECT nombre_departamento, promedio_salario
FROM (SELECT departamento_id, AVG(salario) AS promedio_salario FROM empleados GROUP BY departamento_id) AS salario_promedio
JOIN departamentos ON salario_promedio.departamento_id = departamentos.departamento_id;

SELECT nombre, apellido
FROM empleados
WHERE salario IN (SELECT DISTINCT salario FROM empleados WHERE salario > 60000);


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
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
     Joins
/---------------------------------------------------------/

-------------------
1. INNER JOIN
-------------------

Un INNER JOIN (unión interna) devuelve las filas que tienen valores coincidentes
en ambas tablas. Este es el tipo de unión más común. Si una fila en una tabla no 
tiene una fila coincidente en la otra, no se incluye en el resultado.



SELECT
    empleados.nombre AS nombre_empleado,
    departamentos.nombre AS nombre_departamento
FROM
    empleados
INNER JOIN  departamentos ON empleados.id_departamento = departamentos.id;

 SELECT 
     e.nombre AS nombre_empleado,
     d.nombre AS nombre_departamento
 FROM
     empleados e
 JOIN
     departamentos d ON e.id_departamento = d.id;    

----------------
2. LEFT JOIN 
----------------

Un LEFT JOIN (unión izquierda) devuelve todas las filas de la tabla de la izquierda y 
las filas coincidentes de la tabla de la derecha. Si no hay coincidencia en la tabla de
la derecha, el resultado para las columnas de esa tabla será NULL.


SELECT
    empleados.nombre AS nombre_empleado,
    departamentos.nombre AS nombre_departamento
FROM
    empleados
LEFT JOIN departamentos ON empleados.id_departamento = departamentos.id;        


-----------------
3. RIGHT JOIN 
-----------------

Un RIGHT JOIN (unión derecha) es lo opuesto a un LEFT JOIN. Devuelve todas las filas
de la tabla de la derecha y las filas coincidentes de la tabla de la izquierda. 
Si no hay coincidencia en la tabla de la izquierda, el resultado para las columnas de esa tabla será NULL.



SELECT
  c.nombre_cliente,
  p.id_pedido
FROM
  clientes AS c
  RIGHT JOIN pedidos AS p
    ON c.id_cliente = p.id_cliente;

----------------
4. FULL JOIN 
----------------

Un FULL JOIN (unión completa) devuelve todas las filas cuando hay una coincidencia en la tabla 
de la izquierda o en la de la derecha. Combina los resultados de un LEFT JOIN y un RIGHT JOIN.
Si una fila de una tabla no tiene una coincidencia en la otra, las columnas correspondientes
serán NULL. MySQL no soporta FULL JOIN directamente, pero puedes simularlo usando una UNION 
de un LEFT JOIN y un RIGHT JOIN.


SELECT
  c.nombre_cliente,
  p.producto
FROM
  clientes AS c
  LEFT JOIN pedidos AS p
    ON c.id_cliente = p.id_cliente
UNION
SELECT
  c.nombre_cliente,
  p.producto
FROM
  clientes AS c
  RIGHT JOIN pedidos AS p
    ON c.id_cliente = p.id_cliente;




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
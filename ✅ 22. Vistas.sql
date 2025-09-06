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
     Vistas 
/---------------------------------------------------------/


Una vista (view) en MySQL es una tabla virtual que se crea a 
partir del resultado de una consulta SELECT.


CREATE VIEW vw_empleados_por_departamento AS
SELECT
    e.nombre AS nombre_empleado,
    d.nombre AS nombre_departamento
FROM
    empleados e
JOIN
    departamentos d ON e.id_departamento = d.id;


SELECT * FROM vw_empleados_por_departamento;

Actualizar una vista
Las vistas en MySQL son de solo lectura por defecto,
lo que significa que no se pueden actualizar directamente.
Sin embargo, puedes actualizar los datos subyacentes en las tablas base.     

UPDATE empleados
SET nombre = 'Juan Perez'
WHERE id = 1;  



Actualización de Datos: En algunos casos, es posible usar INSERT, UPDATE o DELETE 
en vistas para modificar los datos de las tablas subyacentes. Sin embargo, esto
solo es posible si la vista es actualizable (updatable). Una vista es actualizable
si no contiene JOINs, funciones de agregación (COUNT, SUM, etc.) o la cláusula DISTINCT.




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
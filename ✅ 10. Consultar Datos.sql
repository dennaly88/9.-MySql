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

/---------------------------------------------------------/
        Consulta de Datos
/---------------------------------------------------------/

SELECT * FROM Estudiantes;

SELECT nombre, cedula FROM Profesores;

SELECT nombre_materia, creditos FROM Materias WHERE creditos > 3;

SELECT nombre, email FROM Estudiantes WHERE cedula = 'V-20123456';

SELECT * FROM Inscripciones WHERE calificacion >= 15;

SELECT * FROM producto;

SELECT * FROM salvadora.cliente;

SELECT * FROM cliente WHERE apellido='FLORES';

SELECT * FROM producto WHERE marca = 'continental' AND precio > 1000;

SELECT nombre,apellido FROM cliente WHERE nombre LIKE "s%"; 

SELECT nombre,apellido FROM cliente WHERE apellido LIKE "%s"; 

SELECT * FROM proveedor WHERE id_proveedor LIKE '%0%';

SELECT * FROM salvadora.cliente WHERE ci LIKE "18%";

SELECT * FROM salvadora.cliente WHERE ci NOT LIKE "18%";

SELECT * FROM salvadora.producto WHERE cod_producto LIKE "10_";

SELECT NOMBRE,MARCA,COLOR,PRECIO FROM producto WHERE precio BETWEEN 1500 AND 3000;  

SELECT NOMBRE,MARCA,COLOR,PRECIO FROM producto WHERE precio NOT BETWEEN 1500 AND 3000; 

SELECT * FROM producto WHERE precio IN (1800,2300,3000);

SELECT * FROM producto WHERE color IN ('negro','rojo');

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
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
        Privilegios
/---------------------------------------------------------/


/* 
    El comando GRANT se utiliza para otorgar privilegios (permisos) 
    a un usuario o un rol. Estos privilegios pueden ser sobre diferentes
    acciones, como seleccionar, insertar, actualizar o eliminar datos.
*/

GRANT <privilegio> ON <objeto> TO <usuario_o_rol>;

GRANT SELECT ON productos TO analista_ventas;

GRANT INSERT, UPDATE, DELETE ON empleados TO gerente_rrhh;


/*
   El comando REVOKE se utiliza para eliminar privilegios que
  se hayan otorgado previamente a un usuario o un rol. Es la acción 
  contraria a GRANT.
*/

REVOKE <privilegio> ON <objeto> FROM <usuario_o_rol>;

REVOKE SELECT ON productos FROM analista_ventas;

REVOKE INSERT, UPDATE ON empleados FROM gerente_rrhh;

REVOKE ALL PRIVILEGES ON estudiantes FROM director;





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
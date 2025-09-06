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
     Usuarios y Privilegios
/---------------------------------------------------------/

En MySQL, el sistema de usuarios y privilegios es un mecanismo de seguridad 
fundamental que controla quién puede conectarse al servidor de base de datos 
y qué acciones puede realizar. Esto asegura la integridad y confidencialidad 
de los datos.

1. Usuarios (Usuarios)

Un usuario en MySQL se define por dos partes: el nombre de usuario y el host 
desde el que se conecta. La sintaxis completa es 'nombre_usuario'@'host'.

nombre_usuario: Es el nombre de la cuenta (ej. admin, desarrollador, app_web).

host: Especifica desde dónde se permite la conexión. Puede ser:

'localhost': Solo desde el propio servidor.

'%': Desde cualquier host (muy inseguro, usar con precaución).

'192.168.1.10': Desde una dirección IP específica.

'mi_dominio.com': Desde un nombre de dominio específico.

Ejemplo de creación de un usuario:

SQL

CREATE USER 'desarrollador'@'localhost' IDENTIFIED BY 'contraseña_segura';


Este comando crea un usuario llamado desarrollador que solo puede conectarse desde el servidor local y le asigna una contraseña.

2. Privilegios (Privileges)

Los privilegios son los permisos que se otorgan a los usuarios para realizar acciones específicas. Se dividen en varias categorías:

Privilegios de Nivel de Servidor (Globales): Se aplican a todas las bases de datos en el servidor. Ejemplos: CREATE USER, SHUTDOWN.

Privilegios de Nivel de Base de Datos: Se aplican a una base de datos específica. Ejemplos: CREATE, DROP.

Privilegios de Nivel de Tabla: Se aplican a una tabla específica. Ejemplos: SELECT, INSERT, UPDATE, DELETE.

Privilegios de Nivel de Columna: Se aplican a columnas específicas dentro de una tabla.

Sintaxis para otorgar privilegios (GRANT):

SQL

GRANT tipo_de_privilegio ON nombre_de_la_base_de_datos.nombre_de_la_tabla TO 'usuario'@'host';
Ejemplos prácticos de GRANT:

Otorgar todos los privilegios a una base de datos:

SQL

GRANT ALL PRIVILEGES ON mi_tienda.* TO 'admin'@'localhost';
Esto le da al usuario admin todos los permisos sobre todas las tablas en la base de datos mi_tienda.

Otorgar permisos de solo lectura a una tabla:

SQL

GRANT SELECT ON mi_tienda.productos TO 'reportero'@'192.168.1.50';
El usuario reportero solo puede leer datos (SELECT) de la tabla productos desde una IP específica.

Otorgar permisos limitados (SELECT e INSERT) a un usuario web:

SQL

GRANT SELECT, INSERT ON mi_tienda.pedidos TO 'app_web'@'localhost';



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
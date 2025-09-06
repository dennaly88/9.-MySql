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
     MySqlDumps
/---------------------------------------------------------/


Un mysqldump es una utilidad de línea de comandos de MySQL que
se utiliza para crear copias de seguridad lógicas de bases de datos.
No copia archivos de datos directamente, sino que genera un archivo
de texto con sentencias SQL que recrean la estructura de la base de datos y sus datos. 



Sintaxis básica:

mysqldump -u usuario -p nombre_base_de_datos > archivo_salida.sql     
mysqldump -u root -p mi_base_de_datos > respaldo.sql

mysqldump -u danny -p --databases salvadora > /home/danny/Escritorio/respaldo_salvadora_bk.sql


Explicación de los parámetros:

-u usuario: Especifica el nombre de usuario para conectarse a MySQL.
-p: Solicita la contraseña del usuario.
nombre_base_de_datos: El nombre de la base de datos que deseas respaldar.
> archivo_salida.sql: Redirige la salida al archivo especificado.     
databases: Permite respaldar múltiples bases de datos o todas las bases de datos si se usa con --all-databases.
all-databases: Respalda todas las bases de datos en el servidor MySQL




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
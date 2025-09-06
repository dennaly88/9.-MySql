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
     Indices
/---------------------------------------------------------/

Los índices tienen dos propósitos principales:

Acelerar las consultas SELECT: Cuando buscas datos en una columna indexada,
MySQL puede usar el índice para encontrar las filas relevantes de manera mucho 
más rápida, sin tener que escanear toda la tabla (lo que se conoce como
"escaneo de tabla completa"). Esto es especialmente beneficioso para tablas grandes.

Garantizar la unicidad de los datos: Índices únicos, como las claves primarias (PRIMARY KEY), 
aseguran que no haya valores duplicados en una o más columnas.

Tipos de Índices Comunes

Índice PRIMARY KEY: Es un índice especial que identifica de forma única cada fila en una tabla. Solo puede haber uno por tabla y sus valores no pueden ser nulos.

Índice UNIQUE: Similar a la clave primaria, pero se pueden tener múltiples índices únicos por tabla. Garantiza que todos los valores en la columna
 indexada sean únicos, pero a diferencia de la clave primaria, puede permitir valores nulos.

Índice INDEX (o NORMAL): Es el tipo de índice más común. Se usa para mejorar la velocidad de búsqueda en una o varias columnas, pero no garantiza la unicidad.

Índice FULLTEXT: Diseñado para búsquedas de texto completas en columnas de tipo VARCHAR o TEXT. Es útil para búsquedas de palabras clave y frases,
 similar a la funcionalidad de un motor de búsqueda.


CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    INDEX idx_nombre (nombre)
);

CREATE INDEX idx_fecha_creacion ON pedidos (fecha_creacion);




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
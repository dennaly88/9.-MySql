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
        Alterar Tablas
/---------------------------------------------------------/

ALTER TABLE Estudiantes
ADD COLUMN telefono VARCHAR(15);


ALTER TABLE Profesores
MODIFY COLUMN nombre VARCHAR(150);

ALTER TABLE Profesores
DROP COLUMN departamento;

ALTER TABLE Materias
RENAME COLUMN nombre_materia TO nombre;

ALTER TABLE Inscripciones
ADD CONSTRAINT fk_estudiante
FOREIGN KEY (cedula_estudiante) REFERENCES Estudiantes(cedula);

ALTER TABLE Empleados ADD CONSTRAINT FK_departamento FOREIGN KEY (departamento_id) REFERENCES Departamentos(id);




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
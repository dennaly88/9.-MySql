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
        Crear Relación entre Tablas
/---------------------------------------------------------/


ALTER TABLE Inscripciones
ADD CONSTRAINT fk_inscripcion_materia
FOREIGN KEY (codigo_materia) REFERENCES Materias(codigo_materia);

ALTER TABLE Asignaciones
ADD CONSTRAINT fk_asignacion_profesor
FOREIGN KEY (cedula_profesor) REFERENCES Profesores(cedula);

ALTER TABLE Asignaciones
ADD CONSTRAINT fk_asignacion_materia
FOREIGN KEY (codigo_materia) REFERENCES Materias(codigo_materia);

ALTER TABLE Carrera_Materia
ADD CONSTRAINT fk_carrera_materia_carrera
FOREIGN KEY (codigo_carrera) REFERENCES Carreras(codigo_carrera);

ALTER TABLE Carrera_Materia
ADD CONSTRAINT fk_carrera_materia_materia
FOREIGN KEY (codigo_materia) REFERENCES Materias(codigo_materia);

ALTER TABLE Horarios
ADD CONSTRAINT fk_horario_materia
FOREIGN KEY (codigo_materia) REFERENCES Materias(codigo_materia);


ALTER TABLE Horarios
ADD CONSTRAINT fk_horario_salon
FOREIGN KEY (id_salon) REFERENCES Salones(id_salon);


____________________________________________________________________________________________________________________________________________

ALTER TABLE Inscripciones
ADD CONSTRAINT fk_inscripcion_estudiante
FOREIGN KEY (cedula_estudiante) REFERENCES Estudiantes(cedula);



ALTER TABLE Horarios
ADD CONSTRAINT fk_horarios_materias
FOREIGN KEY (codigo_materia) REFERENCES Materias(codigo_materia);



ALTER TABLE Asignaciones 
ADD CONSTRAINT fk_asignacion_profesor
FOREIGN KEY (cedula_profesor) REFERENCES Profesores(cedula)

ALTER TABLE Carrera_Materia
ADD CONSTRAINT fk_carrera_materias
FOREIGN KEY (codigo_materia) REFERENCES Materias(codigo_materia)


ALTER TABLE Carrera_Materia
ADD CONSTRAINT fk_carrera_materias
FOREIGN KEY (codigo_carrera) REFERENCES Carrera (codigo_carrera)



ALTER TABLE Inscripciones
ADD CONSTRAINT fk_carrera_materias_CO
FOREIGN KEY (codigo_materia) REFERENCES Materias(codigo_materia)




ALTER TABLE Empleados 
ADD CONSTRAINT FK_departamento FOREIGN KEY (departamento_id) REFERENCES Departamentos(id);


ALTER TABLE Inscripciones
ADD CONSTRAINT fk_cedula_estudiante
FOREIGN KEY (cedula_estudiante)
REFERENCES Estudiantes(cedula)
ON DELETE CASCADE;


ALTER TABLE Estudiantes
ADD CONSTRAINT fk_carrera
FOREIGN KEY (codigo_carrera)
REFERENCES Carreras(codigo_carrera);


ALTER TABLE Inscripciones
ADD CONSTRAINT fk_inscripcion_estudiante
FOREIGN KEY (cedula_estudiante) REFERENCES Estudiantes(cedula);



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
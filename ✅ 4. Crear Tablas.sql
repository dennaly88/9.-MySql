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
        Crear Tablas 
/---------------------------------------------------------/


CREATE TABLE Estudiantes (
    cedula VARCHAR(15) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    fecha_nacimiento DATE
);


CREATE TABLE Profesores (
    cedula VARCHAR(15) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    departamento VARCHAR(50)
);

CREATE TABLE Materias (
    codigo_materia VARCHAR(20) PRIMARY KEY,
    nombre_materia VARCHAR(100) NOT NULL,
    creditos INT
);

CREATE TABLE Carreras (
    codigo_carrera VARCHAR(20) PRIMARY KEY,
    nombre_carrera VARCHAR(100) NOT NULL
);

CREATE TABLE Inscripciones (
    id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
    cedula_estudiante VARCHAR(15),
    codigo_materia VARCHAR(20),
    fecha_inscripcion DATE,
    FOREIGN KEY (cedula_estudiante) REFERENCES Estudiantes(cedula),
    FOREIGN KEY (codigo_materia) REFERENCES Materias(codigo_materia)
);
CREATE TABLE Horarios (
    id_horario INT AUTO_INCREMENT PRIMARY KEY,
    codigo_materia VARCHAR(20),
    dia_semana VARCHAR(20),
    hora_inicio TIME,
    hora_fin TIME,
    FOREIGN KEY (codigo_materia) REFERENCES Materias(codigo_materia)
);
CREATE TABLE Salones (
    id_salon INT AUTO_INCREMENT PRIMARY KEY,
    nombre_salon VARCHAR(50) NOT NULL,
    capacidad INT
);
CREATE TABLE Asignaciones (
    id_asignacion INT AUTO_INCREMENT PRIMARY KEY,
    cedula_profesor VARCHAR(15),
    codigo_materia VARCHAR(20),
    FOREIGN KEY (cedula_profesor) REFERENCES Profesores(cedula),
    FOREIGN KEY (codigo_materia) REFERENCES Materias(codigo_materia)
);
CREATE TABLE Carrera_Materia (
    id_carrera_materia INT AUTO_INCREMENT PRIMARY KEY,
    codigo_carrera VARCHAR(20),
    codigo_materia VARCHAR(20),     
    FOREIGN KEY (codigo_carrera) REFERENCES Carreras(codigo_carrera),
    FOREIGN KEY (codigo_materia) REFERENCES Materias(codigo_materia)
);



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
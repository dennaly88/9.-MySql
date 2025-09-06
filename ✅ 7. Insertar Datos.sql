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
        INSERTAR DATOS
/---------------------------------------------------------/



-- Inserción de 10 registros en la tabla `Salones`
INSERT INTO Salones (nombre_salon, capacidad) VALUES
('Salon 101', 30),
('Salon 102', 25),
('Salon 201', 40),
('Salon 202', 35),
('Salon 301', 50),
('Laboratorio de Computo', 20),
('Auditorio Principal', 100),
('Salon 103', 30),
('Salon 203', 25),
('Salon 302', 45);

-- Inserción de 10 registros en la tabla `Carreras`
INSERT INTO Carreras (codigo_carrera, nombre_carrera) VALUES
('ING-INF', 'Ingeniería en Informática'),
('ING-IND', 'Ingeniería Industrial'),
('LIC-ADM', 'Licenciatura en Administración'),
('TSU-CONT', 'TSU en Contaduría Pública'),
('TSU-RH', 'TSU en Recursos Humanos'),
('ING-AGRO', 'Ingeniería en Agronomía'),
('LIC-ECON', 'Licenciatura en Economía'),
('TSU-SEG', 'TSU en Seguridad Industrial'),
('LIC-MKT', 'Licenciatura en Mercadeo'),
('ING-CIV', 'Ingeniería Civil');

-- Inserción de 10 registros en la tabla `Materias`
INSERT INTO Materias (codigo_materia, nombre_materia, creditos) VALUES
('PRG-101', 'Programación I', 4),
('BBDD-201', 'Bases de Datos I', 5),
('CAL-301', 'Calculo Avanzado', 6),
('FSC-401', 'Física Moderna', 5),
('ADM-501', 'Administración de Proyectos', 4),
('MAT-601', 'Matemáticas Discretas', 3),
('CON-701', 'Contabilidad Básica', 4),
('QUIM-801', 'Química General', 5),
('EST-901', 'Estadística Aplicada', 4),
('ING-100', 'Inglés Técnico', 2);

-- Inserción de 10 registros en la tabla `Profesores`
INSERT INTO Profesores (cedula, nombre, email, departamento) VALUES
('V-12345678', 'Ana García', 'ana.garcia@unexca.edu.ve', 'Informática'),
('V-13456789', 'Luis Pérez', 'luis.perez@unexca.edu.ve', 'Matemáticas'),
('V-14567890', 'María López', 'maria.lopez@unexca.edu.ve', 'Administración'),
('V-15678901', 'Juan Rodríguez', 'juan.rodriguez@unexca.edu.ve', 'Física'),
('V-16789012', 'Sofía Martínez', 'sofia.martinez@unexca.edu.ve', 'Química'),
('V-17890123', 'Pedro Sánchez', 'pedro.sanchez@unexca.edu.ve', 'Estadística'),
('V-18901234', 'Carla Díaz', 'carla.diaz@unexca.edu.ve', 'Inglés'),
('V-19012345', 'José Gómez', 'jose.gomez@unexca.edu.ve', 'Informática'),
('V-20123456', 'Elena Torres', 'elena.torres@unexca.edu.ve', 'Ingeniería'),
('V-21234567', 'Daniel Vargas', 'daniel.vargas@unexca.edu.ve', 'Contabilidad');

-- Inserción de 10 registros en la tabla `Estudiantes`
INSERT INTO Estudiantes (cedula, nombres, apellidos, email, fecha_nacimiento) VALUES
('E-22345678', 'Pablo', 'Méndez', 'pablo.mendez@gmail.com', '2000-05-10'),
('E-23456789', 'Laura', 'Castro', 'laura.castro@gmail.com', '2001-08-22'),
('E-24567890', 'Carlos', 'Ruiz', 'carlos.ruiz@gmail.com', '2002-03-15'),
('E-25678901', 'Diana', 'Herrera', 'diana.herrera@gmail.com', '1999-11-01'),
('E-26789012', 'Javier', 'Morales', 'javier.morales@gmail.com', '2000-07-25'),
('E-27890123', 'Valeria', 'Gil', 'valeria.gil@gmail.com', '2001-09-30'),
('E-28901234', 'Ricardo', 'Vera', 'ricardo.vera@gmail.com', '2002-04-12'),
('E-29012345', 'Isabel', 'Reyes', 'isabel.reyes@gmail.com', '2000-02-18'),
('E-30123456', 'Felipe', 'Ortiz', 'felipe.ortiz@gmail.com', '2001-06-05'),
('E-31234567', 'Natalia', 'Páez', 'natalia.paez@gmail.com', '1999-10-20');

-- Inserción de 10 registros en la tabla `Asignaciones`
INSERT INTO Asignaciones (cedula_profesor, codigo_materia) VALUES
('V-12345678', 'PRG-101'),
('V-13456789', 'CAL-301'),
('V-14567890', 'ADM-501'),
('V-15678901', 'FSC-401'),
('V-16789012', 'QUIM-801'),
('V-17890123', 'EST-901'),
('V-18901234', 'ING-100'),
('V-19012345', 'BBDD-201'),
('V-20123456', 'MAT-601'),
('V-21234567', 'CON-701');

-- Inserción de 10 registros en la tabla `Carrera_Materia`
INSERT INTO Carrera_Materia (codigo_carrera, codigo_materia) VALUES
('ING-INF', 'PRG-101'),
('ING-INF', 'BBDD-201'),
('ING-IND', 'CAL-301'),
('LIC-ADM', 'ADM-501'),
('TSU-CONT', 'CON-701'),
('ING-AGRO', 'QUIM-801'),
('LIC-ECON', 'EST-901'),
('TSU-SEG', 'FSC-401'),
('LIC-MKT', 'ING-100'),
('ING-CIV', 'MAT-601');

-- Inserción de 10 registros en la tabla `Inscripciones`
INSERT INTO Inscripciones (cedula_estudiante, codigo_materia, fecha_inscripcion) VALUES
('E-22345678', 'PRG-101', '2023-09-01'),
('E-23456789', 'BBDD-201', '2023-09-02'),
('E-24567890', 'CAL-301', '2023-09-03'),
('E-25678901', 'FSC-401', '2023-09-04'),
('E-26789012', 'ADM-501', '2023-09-05'),
('E-27890123', 'MAT-601', '2023-09-06'),
('E-28901234', 'CON-701', '2023-09-07'),
('E-29012345', 'QUIM-801', '2023-09-08'),
('E-30123456', 'EST-901', '2023-09-09'),
('E-31234567', 'ING-100', '2023-09-10');

-- Inserción de 10 registros en la tabla `Horarios`
INSERT INTO Horarios (codigo_materia, dia_semana, hora_inicio, hora_fin, id_salon) VALUES
('PRG-101', 'Lunes', '08:00:00', '10:00:00', 1),
('BBDD-201', 'Martes', '10:00:00', '12:00:00', 2),
('CAL-301', 'Miércoles', '14:00:00', '16:00:00', 3),
('FSC-401', 'Jueves', '09:00:00', '11:00:00', 4),
('ADM-501', 'Viernes', '15:00:00', '17:00:00', 5),
('MAT-601', 'Lunes', '11:00:00', '13:00:00', 6),
('CON-701', 'Miércoles', '17:00:00', '19:00:00', 7),
('QUIM-801', 'Martes', '13:00:00', '15:00:00', 8),
('EST-901', 'Jueves', '16:00:00', '18:00:00', 9),
('ING-100', 'Viernes', '08:00:00', '10:00:00', 10);
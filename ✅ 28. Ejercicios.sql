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

--------------------------------------------------------------------------------------------------------------------------------------------------------
--    Actividad 2 : Manejo de Transacciones en  Bases de Datos (Danny José Jiménez Gutiérrez 16.029.567 y Ali Armando García Castrillo 13.875.797 ) ----
--------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------   SE CREA LA BASE DE DATOS ------------------------------------------------------------------------------------------------



CREATE DATABASE tareas
    WITH
    OWNER = danny
    ENCODING = 'UTF8'
    LC_COLLATE = 'es_VE.UTF-8'
    LC_CTYPE = 'es_VE.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;


------------------------------------------------------------------------------------------------------
---- PRIMER EJERCICIO --------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------


--------- 1. Comandos de creación de tablas (CREATE TABLE) -------------------------------------------

CREATE TABLE habitaciones ( id SERIAL PRIMARY KEY,
numero_habitacion VARCHAR(10) NOT NULL, tipo VARCHAR(50) NOT NULL,
precio DECIMAL(10, 2) NOT NULL,
disponibilidad BOOLEAN NOT NULL DEFAULT TRUE
);


CREATE TABLE huespedes ( id SERIAL PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE reservas (
id SERIAL PRIMARY KEY,
huesped_id INT REFERENCES huespedes(id), habitacion_id INT REFERENCES habitaciones(id), fecha_inicio DATE NOT NULL,
fecha_fin DATE NOT NULL,
estado VARCHAR(20) NOT NULL DEFAULT 'Reservado'
);

--------------------------------------------------------------------------------------------------------------------


--------- 2. Inserciones de datos (INSERT INTO) --------------------------------------------------------------------

INSERT INTO habitaciones (numero_habitacion, tipo, precio, disponibilidad) VALUES 
('101', 'Individual', 50.00, TRUE),
('102', 'Doble', 80.00, TRUE),
('103', 'Suite', 150.00, TRUE);



INSERT INTO huespedes (nombre, email) VALUES
('Juan Pérez', 'juan.perez@example.com'), 
('María López', 'maria.lopez@example.com'),
('Danny Jimenez', 'djimenez@gmail.com'), 
('Carlos Mendez', 'cmendrr@example.com');


BEGIN;


INSERT INTO reservas (huesped_id, habitacion_id, fecha_inicio, fecha_fin) VALUES
((SELECT id FROM huespedes WHERE email = 'juan.perez@example.com'), 1, '2023-10-01', '2023-10-15')
RETURNING id;

COMMIT;

--------------------------------------------------------------------------------------------------------------------


--------- 3. Actualizacion de datos (UPDTAE) -----------------------------------------------------------------------



UPDATE habitaciones SET disponibilidad = FALSE WHERE id = 1;

COMMIT;

--------------------------------------------------------------------------------------------------------------------




------------------------ 4. Manejo de Errores con ROLLBACK------------------------------------------------------------

BEGIN; 
INSERT INTO reservas (huesped_id, habitacion_id, fecha_inicio, fecha_fin) VALUES ((SELECT id FROM huespedes WHERE email = 'juan.perez@example.com'), 1, '2023-10-
01', '2023-10-15')
RETURNING id INTO nueva_reserva_id;


UPDATE habitaciones SET disponibilidad = FALSE WHERE id = 1;


ROLLBACK;

--------------------------------------------------------------------------------------------------------------------


------------------------ 5. Manejo de Select ------------------------------------------------------------

SELECT id, numero_habitacion, tipo, precio, disponibilidad FROM public.habitaciones;

SELECT id, nombre, email FROM public.huespedes;

SELECT id, huesped_id, habitacion_id, fecha_inicio, fecha_fin, estado FROM public.reservas;


--------------------------------------------------------------------------------------------------------------------







------------------------------------------------------------------------------------------------------
---- SEGUNDO  EJERCICIO --------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------



--------- 1. Comandos de creación de tablas (CREATE TABLE) -------------------------------------------


CREATE TABLE empleados ( id SERIAL PRIMARY KEY,
nombre VARCHAR(100) NOT NULL, puesto VARCHAR(50) NOT NULL, salario DECIMAL(10, 2) NOT NULL
);

CREATE TABLE proyectos ( id SERIAL PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
presupuesto DECIMAL(15, 2) NOT NULL, fecha_inicio DATE NOT NULL,
fecha_fin DATE NOT NULL
);

CREATE TABLE asignaciones (
empleado_id INT REFERENCES empleados(id), proyecto_id INT REFERENCES proyectos(id), fecha_inicio DATE NOT NULL,
fecha_fin DATE NOT NULL,
PRIMARY KEY (empleado_id, proyecto_id, fecha_inicio)
);

CREATE TABLE tiempo_trabajado (
empleado_id INT REFERENCES empleados(id),proyecto_id INT REFERENCES proyectos(id), fecha DATE NOT NULL,
horas_trabajadas DECIMAL(4, 2) NOT NULL,
PRIMARY KEY (empleado_id, proyecto_id, fecha)


);

--------------------------------------------------------------------------------------------------------------------


--------- 2. Inserciones de datos (INSERT INTO) --------------------------------------------------------------------


INSERT INTO empleados (nombre, puesto, salario) VALUES ('Ana Gómez', 'Desarrolladora Senior', 6000.00),
('Carlos Rivera', 'Gerente de Proyecto', 7500.00), ('Lucía Fernández', 'Diseñadora UX', 5800.00);

INSERT INTO proyectos (nombre, presupuesto, fecha_inicio, fecha_fin) VALUES ('Proyecto Alpha', 100000.00, '2023-09-01', '2024-01-31'),
('Proyecto Beta', 200000.00, '2023-10-01', '2024-06-30');

INSERT INTO asignaciones (empleado_id, proyecto_id, fecha_inicio, fecha_fin) VALUES ((SELECT id FROM empleados WHERE nombre = 'Ana Gómez'),
(SELECT id FROM proyectos WHERE nombre = 'Proyecto Alpha'), '2023-09-15', '2023-12-31')
RETURNING empleado_id, proyecto_id;

INSERT INTO tiempo_trabajado (empleado_id, proyecto_id, fecha, horas_trabajadas) VALUES
((SELECT id FROM empleados WHERE nombre = 'Ana Gómez'), (SELECT id FROM proyectos WHERE nombre = 'Proyecto Alpha'), '2023-09-15', 8.0);

COMMIT;
--------------------------------------------------------------------------------------------------------------------


------------------------ 3. Manejo de Errores con ROLLBACK------------------------------------------------------------


emp_id INT; proj_id INT;
BEGIN
SELECT id INTO emp_id FROM empleados WHERE nombre = 'Ana Gómez'; SELECT id INTO proj_id FROM proyectos WHERE nombre = 'Proyecto Alpha';

INSERT INTO asignaciones (empleado_id, proyecto_id, fecha_inicio, fecha_fin) VALUES (emp_id, proj_id, '2023-09-15', '2023-12-31');

INSERT INTO tiempo_trabajado (empleado_id, proyecto_id, fecha, horas_trabajadas) VALUES(emp_id, proj_id, '2023-09-15', 8.0);

EXCEPTION WHEN OTHERS THEN RAISE; END;
$$;
ROLLBACK;


--------------------------------------------------------------------------------------------------------------------

------------------------ 4. Manejo de Select -----------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------------------

SELECT id, nombre, puesto, salario FROM public.empleados;

SELECT id, nombre, presupuesto, fecha_inicio, fecha_fin FROM public.proyectos;

SELECT empleado_id, proyecto_id, fecha_inicio, fecha_fin FROM public.asignaciones;

SELECT empleado_id, proyecto_id, fecha, horas_trabajadas FROM public.tiempo_trabajado;



------------------------------------------------------------------------------------------------------------------
---- TERCER  EJERCICIO --------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------

--------- 1. Comandos de creación de tablas (CREATE TABLE) --------------------------------------------------------


CREATE TABLE libros (
id SERIAL PRIMARY KEY,
titulo VARCHAR(200) NOT NULL, autor VARCHAR(100) NOT NULL,
anio_publicacion INT, cantidad INT
);

CREATE TABLE miembros ( id SERIAL PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE prestamos (
miembro_id INT REFERENCES miembros(id), libro_id INT REFERENCES libros(id),
fecha_prestamo DATE NOT NULL, fecha_devolucion DATE
);

--------------------------------------------------------------------------------------------------------------------


--------- 2. Inserciones de datos (INSERT INTO) --------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------
INSERT INTO libros (titulo, autor, anio_publicacion, cantidad) VALUES ('1984', 'George Orwell', 1949, 4),
('To Kill a Mockingbird', 'Harper Lee', 1960, 3), ('The Great Gatsby', 'F. Scott Fitzgerald', 1925, 2);

INSERT INTO miembros (nombre, email) VALUES ('Luis Díaz', 'luis.diaz@example.com'),
('Ana Ramírez', 'ana.ramirez@example.com');


INSERT INTO prestamos (miembro_id, libro_id, fecha_prestamo) VALUES ((SELECT id FROM miembros WHERE nombre = 'Luis Díaz'),
(SELECT id FROM libros WHERE titulo = '1984'), '2023-09-20')
RETURNING miembro_id, libro_id;

--------------------------------------------------------------------------------------------------------------------
--------- 3. Actualizacion de datos (UPDTAE) -----------------------------------------------------------------------

UPDATE libros SET cantidad = cantidad - 1 WHERE id = (SELECT id FROM libros WHERE titulo = '1984');
COMMIT;



--------------------------------------------------------------------------------------------------------------------



------------------------ 4. Manejo de Errores con ROLLBACK------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------

miembro_id INT; libro_id INT;
BEGIN;
SELECT id INTO miembro_id FROM miembros WHERE nombre = 'Luis Díaz'; SELECT id INTO libro_id FROM libros WHERE titulo = '1984';

INSERT INTO prestamos (miembro_id, libro_id, fecha_prestamo) VALUES (miembro_id, libro_id, '2023-09-20');

UPDATE libros SET cantidad = cantidad - 1 WHERE id = libro_id;

EXCEPTION
WHEN OTHERS THEN

RAISE; END;
$$;
ROLLBACK;


--------------------------------------------------------------------------------------------------------------------


------------------------ 5. Manejo de Select ------------------------------------------------------------

SELECT id, titulo, autor, anio_publicacion, cantidad FROM public.libros;

SELECT id, nombre, email FROM public.miembros;

SELECT miembro_id, libro_id, fecha_prestamo, fecha_devolucion FROM public.prestamos;





--------------------------------------------------------------------------------------------------------------------



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

















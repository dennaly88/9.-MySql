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
     COMMIT
/---------------------------------------------------------/



El comando COMMIT se utiliza para guardar permanentemente todos los cambios realizados


UPDATE cuentas SET saldo = saldo - 100 WHERE id_cuenta = 'A';
UPDATE cuentas SET saldo = saldo + 100 WHERE id_cuenta = 'B';
COMMIT;


/----------------------------------------------------------/
     ROLLBACK

/---------------------------------------------------------/



El comando ROLLBACK se utiliza para deshacer todos los cambios realizados


UPDATE cuentas SET saldo = saldo - 100 WHERE id_cuenta = 'A';
-- Si la siguiente línea falla, se ejecuta ROLLBACK
-- UPDATE cuentas SET saldo = saldo + 100 WHERE id_cuenta = 'B';
ROLLBACK;


/----------------------------------------------------------/
     SAVE POINT     
/---------------------------------------------------------/


El comando SAVE POINT se utiliza para establecer un punto de guardado dentro de una transacción
  

UPDATE cuentas SET saldo = saldo - 100 WHERE id_cuenta = 'A';
SAVEPOINT punto1;
UPDATE cuentas SET saldo = saldo + 100 WHERE id_cuenta = 'B';   
ROLLBACK TO punto1;  -- Deshacer hasta el punto de guardado
COMMIT;              -- Guardar los cambios restantes





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
## INSERTAR DATOS A LAS TABLAS
-- Para poder realizar los registros de los datos, vamos a utilizar los siguientes comandos:
-- SINTAXIS: INSERT INTO nombre_tabla (campos) VALUES (valores);
-- EJEMPLOS:
-- Registramos datos a la tabla "user"
INSERT INTO user (name_user, lastname, email, cellphone) VALUES ("Carlos", "Perez", "carlos432@gmail.com", "985632741");

-- Registramos datos a la tabla "consultation"
INSERT INTO consultation (user, consultation, agent, answer) VALUES (1, "consultaEjemplo", 1, "respuestaEjemplo");

-- Registramos datos a la tabla "agent"
INSERT INTO agent (name_agent, lastname, email, cellphone) VALUES ("juan", "fernandez", "juan768@gmail.com", "123985647");

## VISUALIZAR REGISTROS DE LAS TABLAS
-- SINTAXIS: SELECT * FROM nombre_tabla;
-- EJEMPLOS: 
-- Visualizar los registros de la tabla "user"
SELECT * FROM user;

-- Visualizar los registros de la tabla "consultation"
SELECT * FROM consultation;

-- Visualizar los registros de la tabla "agent"
SELECT * FROM agent;

## ACTUALIZAR LOS REGISTROS DE LAS TABLAS
-- SINTAXIS: UPDATE nombre_tabla SET nombre_campo = nuevo_valor WHERE campo_buscado = valor_requerido;
-- EJEMPLO:
-- Actualizamos el número de celular de 'Juan' de la tabla 'agent'
UPDATE agent
SET cellphone = 986532741
WHERE id = 1;

## ELIMINACIÓN DE REGISTRO
-- SINTAXIS: DELETE FROM nombre_tabla WHERE campo_buscado = valor_requerido;
-- EJEMPLO:
-- Eliminación del primer registro de la tabla 'agent';
DELETE FROM agent
WHERE id = 1;
## CREACIÓN DE LAS ESTRUCTURAS
# CREACIÓN DE LA BASE DE DATOS
-- Utilizamos la sentencia CREATE para crear nuestra base de datos nombrada "IMT_Contact_DB"
CREATE DATABASE IF NOT EXISTS IMT_Contact_DB
CHARACTER SET utf8mb4
COLLATE utf8mb4_spanish_ci;

# USAMOS LA BASE DE DATOS PREVIAMENTE CREADA
-- SINTAXIS: USE nombre_base_datos;
USE IMT_Contact_DB;

# VISUALIZAR LA BASE DE DATOS
SHOW DATABASES;

# CREACIÓN DE LAS TABLAS
-- Una vez creada la base de datos, creamos las tablas a utilizar
-- SINTAXIS: CREATE TABLE IF NOT EXISTS nombre_tabla(campos, tipo de dato) ENGINE=nombre_motor;
-- Creamos la tabla "user" para los registros de los datos relacionados con el usuario o aplicante de la consulta
CREATE TABLE IF NOT EXISTS user(
	id int auto_increment not null COMMENT 'Identificador númerico y único de cada usuario',
    registration_date timestamp DEFAULT current_timestamp COMMENT 'Fecha en que se registró al usuario',
    name_user varchar(60) not null COMMENT 'Contiene los nombres del usuario',
    lastname varchar(100) not null COMMENT 'Contiene los apellidos del usuario',
    email varchar(120) COMMENT 'Correo del usuario',
    cellphone char(9) not null COMMENT 'Número de celular del usuario',
    state char(1) DEFAULT 'A' COMMENT '(A) activo | (I) inactivo',
    CONSTRAINT pk_user PRIMARY KEY (id)
) ENGINE=InnoDB;

-- Creamos la tabla "consultation" para los registros de los datos relacionados con la consulta
CREATE TABLE IF NOT EXISTS consultation(
	id int auto_increment not null COMMENT 'Identificador unico para cada consulta',
    consultation_date timestamp DEFAULT current_timestamp COMMENT 'Contiene la fecha y hora en que se registra la consulta',
    user int not null COMMENT 'Identificador del usuario previamente registrado',
    consultation varchar(400) not null COMMENT 'Descripción de la consulta que se realiza',
    agent int not null COMMENT 'Identificador del agente quien atiende la consulta',
    answer varchar(500) not null COMMENT 'Contiene la respuesta de atención del agente',
    state char(1) DEFAULT 'A' COMMENT '(A) Activa | (P) Pendiente',
    CONSTRAINT pk_consultation PRIMARY KEY (id)
)ENGINE=InnoDB;

-- Creamos la tabla "agent" para los registros de los datos relacionados con el agente o asesor encargado de atender la consulta
CREATE TABLE IF NOT EXISTS agent(
	id int auto_increment not null COMMENT 'Identificador único de agente',
    registration_date timestamp DEFAULT current_timestamp COMMENT 'Fecha en que se registra los datos del asesor',
    name_agent varchar(60) not null COMMENT 'Nombre del agente',
    lastname varchar(100) not null COMMENT 'Apellidos del agente',
    email varchar(60) not null COMMENT 'Correo electronico del agente',
    cellphone char(9) not null COMMENT 'Contiene el número de celular del agente',
    state char(1) DEFAULT 'A' COMMENT '(A) activo | (I) inactivo',
    CONSTRAINT pk_agent PRIMARY KEY (id)
)ENGINE=InnoDB;

## VISUALIZAR LAS TABLAS
SHOW TABLES;

## DESCRIPCIÓN DE LAS TABLAS
-- SINTAXIS: DESCRIBE nombre_tabla;
-- EJEMPLOS:
-- Descripción de la tabla "user"
DESCRIBE user;

-- Descripción de la tabla "consultation"
DESCRIBE consultation;

-- Descripción de la tabla "agent"
DESCRIBE agent;

## INFORMACIÓN DE LAS TABLAS
-- SINTAXIS: SHOW TABLE STATUS LIKE 'nombre_tabla';
-- EJEMPLOS:
-- Información de la tabla "user";
SHOW TABLE STATUS LIKE 'user';

-- Información de la tabla "consultation";
SHOW TABLE STATUS LIKE 'consultation';

-- Información de la tabla "agent";
SHOW TABLE STATUS LIKE 'agent';

## CREACIÓN DE LAS RELACIONES
-- SINTAXIS: ALTER TABLE nombre_tabla ADD CONSTRAINT nombre_relacion FOREIGN KEY (campo_FK) REFERENCES nombre_tabla(nombre_PK);
-- Creación de la relación entre la tabla "user" y la tabla "consultation"
ALTER TABLE consultation
ADD CONSTRAINT fk_user_consultation
FOREIGN KEY (user) REFERENCES user (id);

-- Creación de la relación entre la tabla "agent" y la tabla "consultation"
ALTER TABLE consultation
ADD CONSTRAINT fk_agent_consultation
FOREIGN KEY (agent) REFERENCES agent (id);

# VISUALIZAR LAS RELACIONES CREADAS
SELECT
	kcu.CONSTRAINT_NAME AS 'Nombre de la relación',
    kcu.REFERENCED_TABLE_NAME AS 'Tabla Padre',
    kcu.REFERENCED_COLUMN_NAME AS 'Primary Key',
    kcu.TABLE_NAME AS 'Tabla Hija',
    kcu.COLUMN_NAME AS 'Foreign Key'
FROM
	information_schema.KEY_COLUMN_USAGE AS kcu
WHERE
	kcu.TABLE_SCHEMA = 'IMT_Contact_DB'
    AND kcu.REFERENCED_TABLE_NAME IS NOT NULL;

## ELIMINACIÓN DE ESTRUCTURAS
# ELIMINACIÓN DE LA BASE DE DATOS
-- SINTAXIS: DROP DATABASE IF EXISTS nombre_base_datos;
-- EJEMPLO: Eliminación de la base de datos "IMT_Contact_DB"
DROP DATABASE IF EXISTS IMT_Contact_DB;

# ELIMINACIÓN DE LAS TABLAS
-- SINTAXIS: DROP TABLE IF EXISTS nombre_tabla;
-- EJEMPLO: Eliminación de la tabla "user"
DROP TABLE IF EXISTS user;

-- Eliminación de la tabla "consultation"
DROP TABLE IF EXISTS consultation;

-- Eliminación de la tabla "agent"
DROP TABLE IF EXISTS agent;
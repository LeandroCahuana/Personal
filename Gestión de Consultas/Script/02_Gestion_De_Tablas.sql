## GESTIÓN DE TABLAS

# UTILIZAMOS NUESTRA BASE DE DATOS IMT_Contact_DB PREVIAMENTE CREADA
USE IMT_Contact_DB;

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
    consultation varchar(400) not null COMMENT 'Descripción de la consulta que se realiza',
    state char(1) DEFAULT 'A' COMMENT '(A) activo | (I) inactivo',
    CONSTRAINT pk_user PRIMARY KEY (id)
) ENGINE=InnoDB;

-- Creamos la tabla "consultation" para los registros de los datos relacionados con la consulta
CREATE TABLE IF NOT EXISTS consultation(
	id int auto_increment not null COMMENT 'Identificador unico para cada consulta',
    consultation_date timestamp DEFAULT current_timestamp COMMENT 'Contiene la fecha y hora en que se registra la consulta',
    user int not null COMMENT 'Identificador del usuario previamente registrado',
    agent int not null COMMENT 'Identificador del agente quien atiende la consulta',
    answer varchar(500) not null COMMENT 'Contiene la respuesta de atención del agente',
    state char(1) DEFAULT 'A' COMMENT '(A) Atendida | (P) Pendiente',
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
    password_agent varchar(60) not null COMMENT 'Contiene la contraseña del agente',
    state char(1) DEFAULT 'A' COMMENT '(A) activo | (I) inactivo',
    CONSTRAINT pk_agent PRIMARY KEY (id)
)ENGINE=InnoDB;

# UTILIZAMOS NUESTRA BASE DE DATOS IMT_Calendar_DB PREVIAMENTE CREADA
USE IMT_Calendar_DB;

-- Creamos la tabla "calendar" para los registros de las fechas cívicas relacionadas con el objetivo de desarrollo sostenible 4 "Educación de Calidad"
CREATE TABLE IF NOT EXISTS calendar(
	id int auto_increment not null COMMENT 'Identificador unico para cada fecha',
    name_event varchar(50) not null COMMENT 'Nombre de la fecha cívica',
    description_event varchar(1500) not null COMMENT 'Descripción de la fecha cívica',
    date_event date not null COMMENT 'Fecha cívica',
    CONSTRAINT pk_calendar PRIMARY KEY (id)
)ENGINE=InnoDB;

## VISUALIZAR LAS ESTRUCTURAS DE LAS TABLAS
-- SINTAXIS: DESCRIBE nombre_tabla;
# DESCRIBE user;
# DESCRIBE consultation;
# DESCRIBE agent;
# DESCRIBE calendar;

## ELIMINAR LAS TABLAS CREADAS
-- SINTAXIS: DROP TABLE nombre_tabla;
# DROP TABLE user;
# DROP TABLE consultation;
# DROP TABLE agent;
# DROP TABLE calendar;

## VISUALIZAR LAS TABLAS CREADAS
# SHOW TABLES;
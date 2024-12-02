# DESARROLLO DE LA BASE DE DATOS

## CREACIÓN DE LA BASE DE DATOS
Para la creación de nuestra base datos vamos a ejecutar el siguiente comando 
````SQL
CREATE DATABASE IF NOT EXISTS IMT_Contact_DB
CHARACTER SET utf8mb4
COLLATE utf8mb4_spanish_ci;
````
Luego lo ponemos en uso con el comando 
````SQL
USE IMT_Contact_DB;
````

## CREACIÓN DE LAS TABLAS A UTILIZAR
Para poder crear nuestras tablas user, consultation y agent, vamos a utilizar las siguientes líneas de comando
### Tabla user (Datos de el usuario y su consulta)
````SQL
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
````
### Tabla consultation (Datos de la consulta realizada y su respuesta)
````SQL
CREATE TABLE IF NOT EXISTS consultation(
	id int auto_increment not null COMMENT 'Identificador unico para cada consulta',
    consultation_date timestamp DEFAULT current_timestamp COMMENT 'Contiene la fecha y hora en que se registra la consulta',
    user int not null COMMENT 'Identificador del usuario previamente registrado',
    agent int not null COMMENT 'Identificador del agente quien atiende la consulta',
    answer varchar(500) not null COMMENT 'Contiene la respuesta de atención del agente',
    state char(1) DEFAULT 'A' COMMENT '(A) Atendida | (P) Pendiente',
    CONSTRAINT pk_consultation PRIMARY KEY (id)
)ENGINE=InnoDB;
````
### Tabla agent (Datos de los agentes o asesores de la empresa)
````SQL
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
````

## CREACIÓN DE LAS RELACIONES ENTRE LAS TABLAS
Para poder generar una relación entre las tablas anteriormente creadas vamos a ejecutar las siguientes líneas de comando
### Relación user_consultation
````SQL
ALTER TABLE consultation
ADD CONSTRAINT fk_user_consultation
FOREIGN KEY (user) REFERENCES user(id) ON DELETE CASCADE ON UPDATE CASCADE;
````
### Relación agent_consultation
````SQL
ALTER TABLE consultation
ADD CONSTRAINT fk_agent_consultation
FOREIGN KEY (agent) REFERENCES agent (id) ON DELETE CASCADE ON UPDATE CASCADE;
````

## ELIMINACIÓN DE LA BASE DE DATOS
En caso queremos eliminar nuestra base de datos debemos utilizar la siguient sentencia
````SQL
DROP DATABASE IMT_Contact_DB;
````

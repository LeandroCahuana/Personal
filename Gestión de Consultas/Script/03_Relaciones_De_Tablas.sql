## RELACIONES DE TABLAS

# UTILIZAMOS NUESTRA BASE DE DATOS IMT_Contact_DB PREVIAMENTE CREADA
USE IMT_Contact_DB;

# CREACIÓN DE LAS RELACIONES
-- SINTAXIS: ALTER TABLE nombre_tabla ADD CONSTRAINT nombre_relacion FOREIGN KEY (campo_FK) REFERENCES nombre_tabla(nombre_PK) ON DELETE CASCADE ON UPDATE CASCADE;
-- Creación de la relación entre la tabla "user" y la tabla "consultation"
ALTER TABLE consultation
ADD CONSTRAINT fk_user_consultation
FOREIGN KEY (user) REFERENCES user(id) ON DELETE CASCADE ON UPDATE CASCADE;

-- Creación de la relación entre la tabla "agent" y la tabla "consultation"
ALTER TABLE consultation
ADD CONSTRAINT fk_agent_consultation
FOREIGN KEY (agent) REFERENCES agent (id) ON DELETE CASCADE ON UPDATE CASCADE;

# VISUALIZAR LAS RELACIONES CREADAS
/*SELECT
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
*/
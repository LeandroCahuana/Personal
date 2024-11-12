USE dbGamarraMarket;
INSERT INTO 
CLIENTE (tipo_documento, numero_documento, nombres, apellidos, email, celular, fecha_nacimiento)
VALUES
('DNI', '77889955', 'Alberto', 'Solano Pariona', 'alberto.pariona@empresa.com', '998456103', STR_TO_DATE('1970-02-10','%Y-%m-%d')),
('DNI', '45781233', 'Alicia', 'García Campos', '', '', STR_TO_DATE('1980-03-20','%Y-%m-%d')),
('CNE', '315487922', 'Juana', 'Ávila Chumpitaz', 'juana.avila@gmail.com', '923568741', STR_TO_DATE('1986-06-06','%Y-%m-%d')),
('CNE', '12216633', 'Ana', 'Enriquez Flores', 'ana.enriquez@empresa.com', '', STR_TO_DATE('1970-02-10','%Y-%m-%d')),
('CNE', '088741589', 'Claudia', 'Perales Ortíz', 'claudia.perales@yahoo.com', '997845263', STR_TO_DATE('1981-07-25','%Y-%m-%d')),
('DNI', '45122587', 'Mario', 'Barrios Martínez', 'mario.barrios@outlook.com', '986525871', STR_TO_DATE('1987-10-10','%Y-%m-%d')),
('CNE', '175258564', 'Brunela', 'Tarazona Guerra', 'brunela.tarazona@gmail.com', '995236741', STR_TO_DATE('1990-06-06','%Y-%m-%d')),
('DNI', '47142536', 'Alejandro', 'Jimenez Huapaya', '', '941525365', STR_TO_DATE('1989-06-01','%Y-%m-%d')),
('DNI', '15352585', 'Claudia', 'Marquez Litaro', 'claudia.marquez@gmail.com', '985914723', STR_TO_DATE('1991-10-01','%Y-%m-%d')),
('CNE', '465772587', 'Mario', 'Rodriguez Mayo', 'mario.rodriguez@outlook.com', '912662587', STR_TO_DATE('1987-11-10','%Y-%m-%d')),
('CNE', '837952514', 'Luisa', 'Guerra Ibarra', 'luis.guerra@yahoo.com', '974422136', STR_TO_DATE('1988-12-21','%Y-%m-%d')),
('DNI', '74142585', 'Pedro Alberto', 'Candela Válenzuela', 'pedro.candela@gmail.com', '94148525', STR_TO_DATE('1995-06-30','%Y-%m-%d')),
('DNI', '53298147', 'Angel Mario', 'Rojas Avila', 'angel.rojas@outlook.com', '', STR_TO_DATE('1975-03-02','%Y-%m-%d')),
('DNI', '11453265', 'Hilario Fernando', 'Avila Huapaya', '', '985514326', STR_TO_DATE('2000-05-02','%Y-%m-%d')),
('CNE', '757472186', 'Octavio Paz', 'Marquez Osorio', 'octavio.marquez@yahoo.com', '966223141', STR_TO_DATE('2000-09-22','%Y-%m-%d')),
('CNE', '558693219', 'Manolo Eduardo', 'Vasquez Saravia', 'manolo.vasquez@outlook.com', '966223141', STR_TO_DATE('2000-09-22','%Y-%m-%d')),
('DNI', '41552567', 'Genoveva', 'Ortíz Quispe', 'genoveva.ortiz@outlook.com', '92564137', STR_TO_DATE('2003-04-12','%Y-%m-%d')),
('DNI', '49985471', 'Oscar César', 'Quiroz Zavala', '', '988223145', STR_TO_DATE('2004-10-12','%Y-%m-%d')),
('DNI', '44992217', 'Verónica', 'Romero Vargas', 'veronica.romero@yahoo.com', '', STR_TO_DATE('2002-08-25','%Y-%m-%d')),
('DNI', '00253641', 'Eliseo', 'Prada Ortíz', 'eliseo.prada@yahoo.com', '', STR_TO_DATE('2004-09-15','%Y-%m-%d'));

INSERT INTO
VENDEDOR (tipo_documento, numero_documento, nombres, apellidos, salario, celular, email)
VALUES
('DNI', '85471236', 'Enrique', 'Pérez Manco', 1500.00, '96521873', 'enrique.perez@outlook.com'),
('DNI', '47259136', 'Sofía', 'Ávila Solis', 1350.00, '', ''),
('DNI', '61542280', 'Marcela', 'Napaico Cama', 1600.00, '965874357', 'marcela.napaico@gmail.com'),
('CNE', '742536140', 'Carmelo', 'Rodríquez Chauca', 1550.00, '', 'carmelo.rodriquez@yahoo.com');

INSERT INTO
PRENDA (descripcion, marca, cantidad, talla, precio)
VALUES
('Pantalon Jeans', 'Levis', 60, '28', 65.80),
('Camisa manga corta', 'Adams', 75, '16', 55.00),
('Polo sport', 'Australia', 100, '16', 40.00),
('Camisa manga larga', 'Newport', 150, '16', 42.50),
('Pijama para caballero', 'Adams', 180, '28', 79.50),
('Corbata', 'Maxwell', 85, '16', 14.50),
('Pijama para dama', 'Adams', 170, '24', 55.50),
('Pantalon Jeans', 'Australia', 200, '28', 68.50),
('Camisa Sport', 'John Holden', 85, '16', 88.50),
('Shorts Jeans', 'Pepe Jeans', 185, '28', 77.20);

INSERT INTO
VENTA (fecha_hora, cliente_id, vendedor_id)
VALUES
(STR_TO_DATE('2023-05-01', '%Y-%m-%d'), 4, 1),
(STR_TO_DATE('2023-05-01', '%Y-%m-%d'), 6, 3),
(STR_TO_DATE('2023-05-01', '%Y-%m-%d'), 10, 1),
(STR_TO_DATE('2023-05-01', '%Y-%m-%d'), 18, 4);

INSERT INTO
VENTA_DETALLE (venta_id, prenda_id, cantidad)
VALUES
( 1, 6, 3),
( 1, 3, 5),
( 1, 2, 7),
( 2, 2, 3),
( 3, 7, 4),
( 3, 10, 6),
( 3, 2, 6),
( 3, 5, 7),
( 4, 2, 4),
( 4, 5, 3);

UPDATE CLIENTE
	SET celular = '922881101'
	WHERE nombres = 'Mario' AND apellidos = 'Rodriguez Mayo';

UPDATE CLIENTE
	SET celular = '977226604'
    WHERE numero_documento = '53298147';
    
UPDATE CLIENTE
	SET activo = 0
    WHERE numero_documento = '11453265' OR numero_documento = '74142585' OR numero_documento = '49985471';
    
UPDATE CLIENTE
	SET celular = ''
    WHERE numero_documento = '87952514' OR numero_documento = '55869321' OR numero_documento = '74142585';
    
UPDATE CLIENTE
	SET activo = 1,
    email = 'oscar.quiroz@yahoo.es'
    WHERE nombres = 'Oscar César' AND apellidos = 'Quiroz Zavala';
    
INSERT INTO 
CLIENTE (tipo_documento, numero_documento, nombres, apellidos, email, celular, fecha_nacimiento)
VALUES
('DNI', '88225463', 'Gustavo Tadeo', 'Quispe Solorzano', 'gustavo.quispe@gmail.com', '', STR_TO_DATE('2001-10-13','%Y-%m-%d')),
('DNI', '15753595', 'Daniela', 'Solis Vargas', 'daniela.soliz@outlook.com', '', STR_TO_DATE('1993-11-09','%Y-%m-%d')),
('DNI', '76314895', 'Miltón Gregorio', 'Vásquez Iturrizaga', 'milton.gregorio@yahoo.com', '974815233', STR_TO_DATE('2004-06-22','%Y-%m-%d')),
('DNI', '84725001', 'Verónica', 'Ancajima Araujo', 'veronica.ancajima@yahoo.com', '', STR_TO_DATE('1980-11-07','%Y-%m-%d')),
('DNI', '11228514', 'Felicita', 'Marroquin Candela', 'felicita.marroquin@outlook.com', '966001472', STR_TO_DATE('2006-06-06','%Y-%m-%d')),
('DNI', '51436952', 'Luhana', 'Ortíz Rodríguez', 'luhana.ortiz@outlook.com', '960405017', STR_TO_DATE('1980-11-25','%Y-%m-%d'));

UPDATE PRENDA
	SET precio = 45.00
    WHERE descripcion = 'Polo sport' AND marca = 'Australia';

UPDATE PRENDA
	SET descripcion = 'Corbata Michi elegante'
    WHERE descripcion = 'Corbata';
    
DELETE FROM PRENDA
	WHERE descripcion = 'Camisa manga corta' OR descripcion = 'Camisa Sport';

DELETE FROM VENDEDOR
	WHERE nombres = 'Marcela' AND apellidos = 'Napaico Cama';
    
DELETE FROM CLIENTE
	WHERE numero_documento = '47142536' OR numero_documento = '77889955';
    
DELETE FROM CLIENTE
	WHERE YEAR(fecha_nacimiento) = 1980;
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'inventory')
BEGIN
CREATE TABLE inventory (
    id INT IDENTITY(1,1) PRIMARY KEY,
    code_product CHAR(4) NOT NULL,
    name_product VARCHAR(30) NOT NULL,
    amount INT NOT NULL,
   description_product VARCHAR(100) NOT NULL,
    price_buys DECIMAL(4,2) NOT NULL,
    price_sale DECIMAL(4,2) NOT NULL,
    id_supplier INT NOT NULL,
    state CHAR(1) NOT NULL
)
END;
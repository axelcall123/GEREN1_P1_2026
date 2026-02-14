
-- 1) SUCURSALES
LOAD DATA INFILE '/var/lib/mysql-files/Sucursales.csv'
INTO TABLE sucursales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- 2) EMPLEADOS (depende de sucursales)
LOAD DATA INFILE '/var/lib/mysql-files/Empleados.csv'
INTO TABLE empleados
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- 3) PRODUCTOS
LOAD DATA INFILE '/var/lib/mysql-files/Productos.csv'
INTO TABLE productos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- 4) FACTURAS (depende de sucursales y empleados)
LOAD DATA INFILE '/var/lib/mysql-files/Facturas.csv'
INTO TABLE facturas
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- 5) DETALLES_FACTURA (depende de facturas y productos)
LOAD DATA INFILE '/var/lib/mysql-files/DetalleFactura.csv'
INTO TABLE detalles_factura
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SET FOREIGN_KEY_CHECKS = 1;



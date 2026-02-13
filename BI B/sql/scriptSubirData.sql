-- agregando sucursales a la base de datos
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.4/Uploads/sucursales.csv'
INTO TABLE sucursales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- agregando empleados a la base de datos
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.4/Uploads/empleados.csv'
INTO TABLE empleados
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- agregando productos a la base de datos
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.4/Uploads/productos.csv'
INTO TABLE productos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- agregando facturas a la base de datos
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.4/Uploads/facturas.csv'
INTO TABLE facturas
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;



-- agregando detalles_factura a la base de datos
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.4/Uploads/detalles_factura.csv'
INTO TABLE detalles_factura
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;



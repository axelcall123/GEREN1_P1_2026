USE midb;

-- Insertar sucursales
LOAD DATA LOCAL INFILE 'ubicacion/sucursales.csv'
INTO TABLE sucursales
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_sucursal, nombre, direccion, ciudad, telefono);

-- Insertar empleados
LOAD DATA LOCAL INFILE 'ubicacion/empleados.csv'
INTO TABLE empleados
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_empleado, nombre, dni, puesto, id_sucursal);

-- Insertar productos
LOAD DATA LOCAL INFILE 'ubicacion/productos.csv'
INTO TABLE productos
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_producto, nombre, descripcion, precio_actual, sku);

-- Insertar facturas
LOAD DATA LOCAL INFILE 'ubicacion/facturas.csv'
INTO TABLE facturas
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_factura, numero_factura, fecha_emision, id_sucursal, id_empleado, total);

-- Insertar detalles de factura
LOAD DATA LOCAL INFILE 'ubicacion/detalles_factura.csv'
INTO TABLE detalles_factura
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_detalle, id_factura, id_producto, cantidad, precio_venta, subtotal);

DROP DATABASE IF EXISTS practica1;
CREATE DATABASE practica1;
USE practica1;

-- =========================
-- TABLA SUCURSALES
-- =========================
CREATE TABLE sucursales (
    id_sucursal INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(200),
    ciudad VARCHAR(100),
    telefono VARCHAR(20)
);

-- =========================
-- TABLA EMPLEADOS
-- =========================
CREATE TABLE empleados (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    dni VARCHAR(20) UNIQUE,
    puesto VARCHAR(100),
    id_sucursal INT,
    FOREIGN KEY (id_sucursal) REFERENCES sucursales(id_sucursal)
);

-- =========================
-- TABLA PRODUCTOS
-- =========================
CREATE TABLE productos (
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    descripcion TEXT,
    precio_actual DECIMAL(10,2),
    sku VARCHAR(50) UNIQUE
);

-- =========================
-- TABLA FACTURAS
-- =========================
CREATE TABLE facturas (
    id_factura INT PRIMARY KEY,
    numero_factura VARCHAR(50) UNIQUE,
    fecha_emision DATE,
    id_sucursal INT,
    id_empleado INT,
    total DECIMAL(12,2),
    FOREIGN KEY (id_sucursal) REFERENCES sucursales(id_sucursal),
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado)
);

-- =========================
-- TABLA DETALLES FACTURA
-- =========================
CREATE TABLE detalles_factura (
    id_detalle INT PRIMARY KEY,
    id_factura INT,
    id_producto INT,
    cantidad INT,
    precio_venta DECIMAL(10,2),
    subtotal DECIMAL(12,2),
    FOREIGN KEY (id_factura) REFERENCES facturas(id_factura),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

CREATE DATABASE Articulos_de_Computacion;

USE Articulos_de_Computacion;

CREATE TABLE Categoria (
	id_Categoria INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL
);

CREATE TABLE Clientes (
	id_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100),
    Direccion VARCHAR(100),
    Email VARCHAR(100)
);

CREATE TABLE Empleados (
	id_Empleado INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100),
    Telefono VARCHAR(15),
    Salario DECIMAL(10,2)
);

CREATE TABLE Proveedores (
    id_Proveedor INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Direccion VARCHAR(100),
    Telefono VARCHAR(15),
    Email VARCHAR(100)
);

CREATE TABLE Productos (
	id_Producto INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Descripcion TEXT,
    Precio DECIMAL(10,2),
    Stock INT NOT NULL,
    Categoria INT,
    Proveedor INT,
    FOREIGN KEY (Categoria) REFERENCES Categoria(id_categoria),
    FOREIGN KEY (Proveedor) REFERENCES Proveedores(id_Proveedor)
);

CREATE TABLE Orden_de_Venta (
	id_Orden INT AUTO_INCREMENT PRIMARY KEY,
    id_Cliente INT,
    id_Empleado INT,
    Fecha DATE NOT NULL,
    FOREIGN KEY (id_Cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_Empleado) REFERENCES Empleados(id_Empleado)
);

CREATE TABLE Detalle_de_Venta (
	id_Detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_Venta INT,
    id_Producto INT,
    Cantidad INT NOT NULL,
    Precio_Unitario DECIMAL(10,2) NOT NULL,
    Subtotal DECIMAL(10,2),
    FOREIGN KEY (id_Venta) REFERENCES Orden_de_Venta(id_Orden),
    FOREIGN KEY (id_Producto) REFERENCES Productos(id_producto)
);

CREATE TABLE Facturas (
	id_Factura INT AUTO_INCREMENT PRIMARY KEY, 
    id_cliente INT, 
    Fecha_Emision DATE NOT NULL, 
    Total DECIMAL (10,2) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Orden_de_Venta(id_cliente)
    );
	
CREATE TABLE Pagos (
	id_Pago INT AUTO_INCREMENT PRIMARY KEY,
    id_Orden INT,
    Fecha_Pago DATE NOT NULL,
    Metodo_Pago VARCHAR(50),
    Monto DECIMAL(10,2),
    FOREIGN KEY (id_Orden) REFERENCES Orden_de_Venta(id_Orden)
);

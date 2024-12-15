USE articulos_de_computacion;

-- Inserto los datos en la tabla Categoria
	INSERT INTO categoria (id_Categoria, Nombre)
	VALUES
			("1", "Procesadores"),
			("2", "Mothers"),
			("3", "Placa de Video"),
			("4", "Memorias RAM"),
			("5", "Almacenamiento"),
			("6", "Gabinetes"),
			("7", "Fuentes"),
			("8", "Monitores"),
			("9", "Perifericos"),
			("10", "Conectividad"),
			("11", "Laptops"),
			("12", "Impresoras");

-- Inserto los datos en la tabla Clientes        
	INSERT INTO clientes (id_Cliente, nombre, apellido, Email, Direccion) 
	VALUES 
		(1, "Santiago", "Toloza", 'Santitoloza@gmail.com', 'Calle 5'),
		(2, 'Matias', 'Gimenez', 'Matigimenez@gmail.com', 'Calle 18'),
		(3, 'Florencia ', 'Chiribelo', 'Florchiri@gmail.com', 'Calle 36'),
		(4, 'Ignacio', 'Maestro Puch', 'Nachomp@gmail.com', 'Calle 131'),
		(5, 'Belen ', 'Abreu', 'Buelenabreu@gmail.com', 'Calle 578'),
		(6, 'Tomas', 'Parmo', 'tomiparmo@gmail.com', 'Calle 74'),
		(7, 'Santiago', 'Lopez', 'Santilopez7@gmail.com', 'Calle 25'),
		(8, 'Mia', 'Alves', 'miaalves@gmail.com', 'Calle 12'),
		(9, 'Baltasar', 'Barcia', 'baltabar@gmail.com', 'Calle 8'),
		(10, 'Rodrigo', 'Rey', 'Rodrirey@gmail.com', 'Calle 33'),
		(11, 'Nayla', 'Gallo', 'NaylaGa@gmail.com', 'Calle 15'),
		(12, 'Lautaro', 'Millan', 'Lautimillan18@gmail.com', 'Calle 21'),
		(13, 'Ivan ', 'Marcone', 'ivanMarcone23@gmail.com', 'Calle 678'),
		(14, 'Micaela ', 'Lopez', 'Micalopez@gmail.com', 'Calle 115 '),
		(15, 'Juan Manuel', 'Fedorco', 'jmfedorco@gmail.com', 'Calle 156 ');
    
 -- Inserto los datos en la tabla Empleados
	INSERT INTO empleados (id_empleado, nombre, apellido, Telefono, Salario) 
	VALUES 
			("1", "Santiago", "Montiel", "2923650689", "620000"),
			("2", "Felipe", "Loyola", "2923433431", "620000");

-- Inserto los datos en la tabla Proveedores
	INSERT INTO Proveedores (id_proveedor, Nombre, Direccion, Telefono, Email) 
	VALUES
			('1', 'Tech Supplies S.A.', 'Av. Siempre Viva 123, Buenos Aires', '011-1234-5678', 'contacto@techsupplies.com'),
			('2', 'Gamer Gear Inc.', 'Calle Falsa 456, La Plata', '0221-9876-5432', 'ventas@gamergear.com'),
			('3', 'UltraTech Distributors', 'Av. Libertador 789, Mendoza', '0261-2345-6789', 'info@ultratech.com'),
			('4', 'High-End Hardware Ltd.', 'Calle Principal 101, Córdoba', '0351-3456-7890', 'soporte@highendhardware.com'),
			('5', 'Storage Solutions Co.', 'Av. San Martín 202, Rosario', '0341-4567-8901', 'almacenamiento@storagesolutions.com'),
			('6', 'Graphics Galore', 'Calle Secundaria 303, Mar del Plata', '0223-5678-9012', 'graficos@graphicsgalore.com');

-- Inserto los datos en la tabla Productos
	INSERT INTO Productos (id_producto, Nombre, Descripcion, Precio, Stock, Categoria, Proveedor) 
	VALUES
			('1', 'Teclado Mecánico RGB', 'Teclado mecánico con iluminación RGB personalizable y switches mecánicos.', 8999.00, 50, 9, 2),
			('2', 'Mouse Gamer', 'Mouse ergonómico con DPI ajustable hasta 16000 y botones programables.', 5949.00, 75, 9, 3),
			('3', 'Monitor 4K UHD', 'Monitor 4K UHD de 27 pulgadas con HDR y tasa de refresco de 144Hz.', 39999.00, 20, 8, 5),
			('4', 'Laptop Ultrabook', 'Laptop ultradelgada con procesador Intel i7 y 16GB de RAM.', 119999.00, 10, 11, 2),
			('5', 'Disco Duro Externo 1TB', 'Disco duro externo portátil con USB 3.1 y velocidad de transferencia rápida.', 5999.00, 100, 5, 4),
			('6', 'Tarjeta Gráfica RTX 4060', 'Tarjeta gráfica de última generación con 12GB de VRAM y soporte para ray tracing.', 49999.00, 15, 3, 6),
			('7', 'Fuente de Poder 750W', 'Fuente de poder certificada 80 PLUS Gold con diseño modular.', 12999.00, 30, 7, 2),
			('8', 'Audífonos Inalámbricos', 'Audífonos Bluetooth con cancelación de ruido activa y batería de 24 horas.', 9999.00, 60, 9, 4),
			('9', 'Impresora Multifuncional', 'Impresora 3 en 1 (impresión, escaneo, copia) con conectividad inalámbrica.', 14999.00, 25, 12, 3),
			('10', 'Router WiFi 6', 'Router inalámbrico con soporte WiFi 6 y velocidades de hasta 3000Mbps.', 17999.00, 40, 10, 1),
			('11', 'Procesador Intel i9', 'Procesador Intel Core i9 de décima generación con 10 núcleos y 20 hilos.', 49999.00, 25, 1, 1),
			('12', 'Motherboard ATX', 'Motherboard ATX con soporte para procesadores Intel y AMD, y múltiples ranuras PCIe.', 19999.00, 30, 2, 2),
			('13', 'Memoria RAM 16GB', 'Memoria RAM DDR4 de 16GB con velocidad de 3200MHz.', 7999.00, 50, 4, 5),
			('14', 'SSD 1TB', 'Unidad de estado sólido (SSD) de 1TB con interfaz NVMe y alta velocidad de lectura/escritura.', 14999.00, 40, 5, 4),
			('15', 'Gabinete ATX', 'Gabinete ATX con panel lateral de vidrio templado y soporte para refrigeración líquida.', 9999.00, 20, 6, 5),
			('16', 'Fuente de Poder 650W', 'Fuente de poder certificada 80 PLUS Bronze con diseño semi-modular.', 8999.00, 35, 7, 6),
			('17', 'Monitor Full HD', 'Monitor Full HD de 24 pulgadas con tasa de refresco de 75Hz.', 19999.00, 50, 8, 6),
			('18', 'Teclado Inalámbrico', 'Teclado inalámbrico con batería recargable y diseño ergonómico.', 4999.00, 60, 9, 6),
			('19', 'Mouse Inalámbrico', 'Mouse inalámbrico con sensor óptico de alta precisión y batería recargable.', 3999.00, 70, 9, 3),
			('20', 'Router Mesh', 'Sistema de router mesh con cobertura de hasta 5000 pies cuadrados y soporte para WiFi 6.', 29999.00, 15, 10, 1),
			('21', 'Procesador AMD Ryzen 7', 'Procesador AMD Ryzen 7 de tercera generación con 8 núcleos y 16 hilos.', 39999.00, 20, 1, 4),
			('22', 'Motherboard Micro-ATX', 'Motherboard Micro-ATX con soporte para procesadores Intel y múltiples ranuras PCIe.', 14999.00, 25, 2, 2),
			('23', 'Memoria RAM 32GB', 'Memoria RAM DDR4 de 32GB con velocidad de 3600MHz.', 15999.00, 30, 4, 5),
			('24', 'HDD 2TB', 'Disco duro mecánico (HDD) de 2TB con interfaz SATA y alta capacidad de almacenamiento.', 7999.00, 50, 5, 6),
			('25', 'Gabinete Micro-ATX', 'Gabinete Micro-ATX con diseño compacto y soporte para refrigeración líquida.', 7999.00, 25, 6, 5),
			('26', 'Fuente de Poder 850W', 'Fuente de poder certificada 80 PLUS Platinum con diseño modular.', 15999.00, 20, 7, 5),
			('27', 'Monitor Curvo', 'Monitor curvo de 32 pulgadas con resolución QHD y tasa de refresco de 144Hz.', 49999.00, 10, 8, 4),
			('28', 'Teclado Mecánico Compacto', 'Teclado mecánico compacto con switches mecánicos y retroiluminación RGB.', 6999.00, 40, 9, 2),
			('29', 'Mouse Vertical', 'Mouse vertical ergonómico con sensor óptico de alta precisión.', 4999.00, 50, 9, 2),
			('30', 'Extensor de Rango WiFi', 'Extensor de rango WiFi con soporte para WiFi 6 y velocidades de hasta 1200Mbps.', 9999.00, 30, 10, 1),
			('31', 'Procesador Intel i5', 'Procesador Intel Core i5 de décima generación con 6 núcleos y 12 hilos.', 29999.00, 30, 1, 3),
			('32', 'Motherboard Mini-ITX', 'Motherboard Mini-ITX con soporte para procesadores AMD y múltiples ranuras PCIe.', 12999.00, 20, 2, 5),
			('33', 'Memoria RAM 8GB', 'Memoria RAM DDR4 de 8GB con velocidad de 2400MHz.', 3999.00, 60, 4, 6),
			('34', 'SSD 500GB', 'Unidad de estado sólido (SSD) de 500GB con interfaz SATA y alta velocidad de lectura/escritura.', 9999.00, 50, 5, 1),
			('35', 'Gabinete Mini-ITX', 'Gabinete Mini-ITX con diseño compacto y soporte para refrigeración líquida.', 6999.00, 15, 6, 3),
			('36', 'Fuente de Poder 500W', 'Fuente de poder certificada 80 PLUS Silver con diseño no modular.', 6999.00, 40, 7, 4),
			('37', 'Monitor 1080p', 'Monitor 1080p de 24 pulgadas con tasa de refresco de 60Hz.', 14999.00, 30, 8, 1),
			('38', 'Teclado Ergonómico', 'Teclado ergonómico con diseño dividido y teclas mecánicas.', 7999.00, 50, 9, 2),
			('39', 'Mouse para Juegos', 'Mouse para juegos con sensor óptico de alta precisión y botones programables.', 6999.00, 60, 9, 3),
			('40', 'Router Gigabit', 'Router gigabit con soporte para WiFi 5 y velocidades de hasta 1000Mbps.', 7999.00, 25, 10, 5),
			('41', 'Procesador AMD Ryzen 5', 'Procesador AMD Ryzen 5 de tercera generación con 6 núcleos y 12 hilos.', 24999.00, 40, 1, 1),
			('42', 'Motherboard ATX Gaming', 'Motherboard ATX para gaming con soporte para procesadores Intel y múltiples ranuras PCIe.', 17999.00, 30, 2, 4),
			('43', 'Memoria RAM 64GB', 'Memoria RAM DDR4 de 64GB con velocidad de 3200MHz.', 29999.00, 20, 4, 3),
			('44', 'HDD 4TB', 'Disco duro mecánico (HDD) de 4TB con interfaz SATA y alta capacidad de almacenamiento.', 12999.00, 30, 5, 1);        

-- Inserto los datos en la tabla Orden_de_venta
	INSERT INTO Orden_de_venta (id_Orden, id_Cliente, id_Empleado, Fecha) 
	VALUES
			('1', '1', '1', '2024-10-01'),
			('2', '2', '2', '2024-10-01'),
			('3', '3', '2', '2024-10-03'),
			('4', '4', '2', '2024-10-04'),
			('5', '5', '2', '2024-10-06'),
			('6', '6', '1', '2024-10-06'),
			('7', '7', '1', '2024-10-06'),
			('8', '8', '2', '2024-10-07'),
			('9', '9', '1', '2024-10-09'),
			('10', '10', '1', '2024-10-10'),
			('11', '11', '2', '2024-10-11'),
			('12', '12', '1', '2024-10-13'),
			('13', '13', '1', '2024-10-13'),
			('14', '14', '1', '2024-10-15'),
			('15', '15', '1', '2024-10-15'),
			('16', '5', '2', '2024-10-16'),
			('17', '11', '2', '2024-10-17'),
			('18', '2', '1', '2024-10-17'),
			('19', '9', '1', '2024-10-18'),
			('20', '1', '2', '2024-10-20');
                           
-- Inserto los datos en la tabla Detalle De Venta
	INSERT INTO detalle_de_venta ( id_detalle, id_venta, id_producto, Cantidad, Precio_Unitario, Subtotal)
	VALUES
			('1', '1', '12', '1', '19999.00', '19999.00'),
            ('2', '1', '7', '1', '12999.00', '12999.00'),
            ('3', '1', '13', '3', '7999.00', '7999.00'),
            ('4', '2', '3', '1', '39999.00', '39999.00'),
            ('5', '2', '18', '1', '4999.00', '4999.00'),
            ('6', '3', '9', '1', '14999.00', '14999.00'),
            ('7', '4', '15', '1', '9999.00', '9999.00'),
            ('8', '4', '2', '1', '5949.00', '5949.00'),
            ('9', '4', '11', '1', '49999.00', '49999.00'),
            ('10', '4', '5', '2', '5999.00', '11998.00'),
            ('11', '4', '1', '1', '8999.00', '8999.00'),
            ('12', '5', '8', '1', '9999.00', '9999.00'),
            ('13', '5', '19', '1', '3999.00', '3999.00'),
            ('14', '6', '4', '2', '119999.00', '239998.00'),
            ('15', '6', '10', '1', '17999.00', '17999.00'),
            ('16', '7', '27', '1', '49999.00', '49999.00'),
            ('17', '7', '13', '9', '7999.00', '71991.00'),
            ('18', '8', '14', '2', '14999.00', '29998.00'),
            ('19', '8', '16', '1', '8999.00', '8999.00'),
            ('20', '8', '17', '2', '19999.00', '39998.00'),
            ('21', '8', '20', '1', '29999.00', '29999.00'),
            ('22', '9', '21', '1', '39999.00', '39999.00'),
            ('23', '9', '23', '2', '15999.00', '31998.00'),
            ('24', '10', '24', '1', '7999.00', '7999.00'),
            ('25', '11', '25', '2', '7999.00', '15998.00'),
            ('26', '11', '32', '2', '12999.00', '25998.00'),
            ('27', '12', '27', '3', '49999.00', '149997.00'),
            ('28', '12', '41', '1', '24999.00', '24999.00'),
            ('29', '12', '38', '1', '7999.00', '7999.00'),
            ('30', '13', '3', '2', '39999.00', '79998.00'),
            ('31', '14', '25', '1', '7999.00', '7999.00'),
            ('32', '15', '2', '1', '14999.00', '14999.00'),
            ('33', '16', '21', '2', '39999.00', '79998.00'),
            ('34', '16', '34', '4', '9999.00', '39996.00'),
            ('35', '16', '7', '2', '12999.00', '25998.00'),
            ('36', '17', '12', '2', '19999.00', '39998.00'),
            ('37', '18', '15', '5', '9999.00', '49995.00'),
            ('38', '19', '44', '1', '12999.00', '12999.00'),
            ('39', '19', '17', '2', '19999.00', '39998.00'),
            ('40', '20', '40', '2', '7999.00', '15998.00'),
            ('41', '20', '4', '1', '119999.00', '119999.00'),
            ('42', '20', '2', '2', '5949.00', '11898.00'),
            ('43', '20', '35', '2', '6999.00', '13998.00'),
            ('44', '20', '31', '2', '8999.00', '17998.00'),
            ('45', '20', '36', '2', '6999.00', '13998.00');

-- Inserto los datos en la tabla Facturas
	INSERT INTO Facturas(id_Factura, id_cliente, Fecha_Emision, Total)
	VALUES
			('1', '1', '2024-10-01', '56995.00'),
			('2', '2', '2024-10-01', '44998.00'),
			('3', '3', '2024-10-03', '14999.00'),
			('4', '4','2024-10-04', '86994.00'),
			('5', '5', '2024-10-06', '13998.00'),
			('6', '6', '2024-10-06', '257997.00'),
			('7', '7', '2024-10-06', '121990.00'),
			('8', '8', '2024-10-07', '108994.00'),
			('9', '9', '2024-10-09', '71997.00'),
			('10', '10', '2024-10-10', '7999.00'),
			('11', '11', '2024-10-11', '41996.00'),
			('12', '12', '2024-10-13', '182995.00'),
			('13', '13', '2024-10-13', '79998.00'),
			('14', '14', '2024-10-15', '7999.00'),
			('15', '15', '2024-10-15', '14999.00'),
			('16', '5', '2024-10-16', '145992.00'),
			('17', '11', '2024-10-17', '39998.00'),
			('18', '2', '2024-10-17', '19995.00'),
			('19', '9', '2024-10-18', '52997.00'),
			('20', '1', '2024-10-20', '193889.00');

-- Insterto los datos en la tabla Pagos 
	INSERT INTO Pagos (id_pago, id_orden, Fecha_pago, Metodo_Pago, Monto)
	VALUES
		('1', '1', '2024-10-01', 'Efectivo', '56995.00'),
		('2', '2', '2024-10-01', 'Transferencia', '44998.00'),
		('3', '3', '2024-10-03', 'Transferencia', '14999.00'),
		('4', '4','2024-10-04', 'Credito', '86994.00'),
		('5', '5', '2024-10-06', 'Credito', '13998.00'),
		('6', '6', '2024-10-06', 'Credito', '257997.00'),
		('7', '7', '2024-10-06', 'Transferencia', '121990.00'),
		('8', '8', '2024-10-07', 'Transferencia', '108994.00'),
		('9', '9', '2024-10-09', 'Efectivo', '71997.00'),
		('10', '10', '2024-10-10', 'Transferencia', '7999.00'),
		('11', '11', '2024-10-11', 'Credito', '41996.00'),
		('12', '12', '2024-10-13', 'Efectivo', '182995.00'),
		('13', '13', '2024-10-13', 'Efectivo', '79998.00'),
		('14', '14', '2024-10-15', 'Efectivo', '7999.00'),
		('15', '15', '2024-10-15', 'Credito', '14999.00'),
		('16', '5', '2024-10-16', 'Credito', '145992.00'),
		('17', '11', '2024-10-17', 'Credito', '39998.00'),
		('18', '2', '2024-10-17', 'Efectivo', '19995.00'),
		('19', '9', '2024-10-18', 'Transferencia', '52997.00'),
		('20', '1', '2024-10-20', 'Transferencia', '193889.00');





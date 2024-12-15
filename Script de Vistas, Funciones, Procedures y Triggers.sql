-- LISTADO DE VISTAS

	-- 1 Ventas por categoria 
			CREATE VIEW Ventas_por_Categoria AS
			SELECT
				c.Nombre AS Categoria,
				SUM(dv.Cantidad) AS Total_Productos,
				SUM(dv.cantidad * dv.Precio_Unitario) AS Total_Ventas
			FROM
				detalle_de_venta AS dv
			JOIN
				Productos AS p ON dv.id_Producto = p.id_Producto
			JOIN
				Categoria AS c ON p.Categoria = c.id_Categoria
			GROUP BY
				c.Nombre;
			
	-- 2 Historial de compras por cliente 
			CREATE VIEW Historial_Clientes AS
			SELECT
				cl.Apellido AS Cliente,
				f.id_Factura,
				f.Fecha_Emision,
				SUM(dv.cantidad * dv.Precio_Unitario) AS Total_Comprado
			FROM
				Facturas AS f
			JOIN
				clientes AS cl ON f.id_cliente = cl.id_cliente
			JOIN
				detalle_de_venta AS dv ON f.id_cliente = dv.id_venta
			GROUP BY
				cl.Apellido, f.id_factura, f.fecha_emision;
			
	-- 3 Inventario actual  
			CREATE VIEW Inventario_Actual AS
			SELECT
				p.id_producto,
				p.nombre AS Producto,
				p.Stock AS Stock_Inicial,
				(p.Stock - IFNULL(SUM(dv.Cantidad), 0)) AS Stock_Actual,
				c.Nombre AS Categoria,
				prov.Nombre AS Proveedor
			FROM
				productos AS p
			LEFT JOIN
				detalle_de_venta AS dv ON p.id_producto = dv.Id_producto
			JOIN
				categoria AS c ON c.id_categoria = p.Categoria
			JOIN
				proveedores AS prov ON p.proveedor = prov.id_proveedor
			GROUP BY
				p.id_producto, p.nombre, p.Stock, p.Categoria, prov.nombre;

	-- 4 Productos sin vender 
			CREATE VIEW Productos_sin_Vender AS
			SELECT
				p.id_producto,
				p.nombre AS Producto,
				c.Nombre AS Categoria,
				prov.Nombre AS Proveedor
			FROM
				productos AS p
			JOIN
				categoria AS c ON c.id_categoria = p.Categoria
			JOIN
				proveedores AS prov ON p.proveedor = prov.id_proveedor
			LEFT JOIN
				detalle_de_venta AS dv ON p.id_producto = dv.Id_producto
			WHERE
				dv.id_Producto IS NULL;

	-- 5 Ventas por empleado 
			CREATE VIEW Ventas_por_Empleado AS
			SELECT
				CONCAT(e.Apellido, ' ', e.Nombre) AS Empleado,
				COUNT(DISTINCT od.id_orden) AS Total_ventas,
				COUNT(dv.id_venta) AS Total_Productos,
				SUM(dv.cantidad * dv.precio_unitario) AS Total_Generado
			FROM
				Empleados AS e
			LEFT JOIN
				Orden_de_venta AS od ON e.id_empleado = od.Id_Empleado
			LEFT JOIN
				detalle_de_venta AS dv ON od.id_orden = dv.id_venta
			GROUP BY
				e.id_empleado, e.Apellido, e.Nombre;
                
                
-- LISTADO DE FUNCIONES

	-- 1 Funcion de ver stock disponible por producto
			DELIMITER %%

			CREATE FUNCTION Stock_Disponible (id_Producto INT)
			RETURNS INT
			DETERMINISTIC
			BEGIN
				DECLARE Stock_Actual INT;
				
				Select (p.stock - IFNULL(SUM(dv.cantidad), 0)) 
				INTO stock_actual
				FROM Productos AS p
				LEFT JOIN detalle_de_venta AS dv ON p.id_producto = dv.id_producto
				WHERE p.id_producto = id_producto
				GROUP BY p.id_producto;
				
				RETURN IFNULL(Stock_Actual, 0);
			END%%
			 
			 DELIMITER ;
	 
	-- 2 Funcion para mostrar el proveedor del producto  seleccionnado
			 DELIMITER %%

			CREATE FUNCTION Proveedor_por_Producto (id_Producto INT)
			RETURNS VARCHAR(100)
			DETERMINISTIC
			BEGIN
				DECLARE Nombre_Proveedor VARCHAR(100);
				
				Select prov.Nombre 
				INTO Nombre_Proveedor
				FROM Productos AS p
				INNER JOIN proveedores AS prov ON p.proveedor = prov.id_proveedor
				WHERE p.id_producto = id_producto;
				
				RETURN IFNULL(nombre_proveedor, 'Proveedor no encontrado');
			END%%
			 
			 DELIMITER ;
             
-- LISTADO DE STORED PROCEDURES

	-- 1 Stored Procedure para generar reportes de venta
				DELIMITER %%

				CREATE PROCEDURE Generar_Reporte_Ventas(
					IN fecha_inicio DATE,
					IN fecha_fin DATE
				)
				BEGIN
					SELECT
						f.id_factura AS ID_Factura,
						c.Nombre AS Cliente,
						CONCAT(e.Apellido, ' ', e.Nombre) AS Empleado,
						p.Nombre AS Producto,
						dv.Cantidad AS Cantidad,
						dv.Precio_Unitario AS Precio_Unitario,
						(dv.Cantidad * dv.Precio_Unitario) AS Total_Producto,
						f.Fecha_Emision AS Fecha_Venta
					FROM
						facturas AS f
					INNER JOIN clientes AS c ON f.id_cliente = c.id_cliente
					INNER JOIN detalle_de_venta AS dv ON f.id_factura = dv.id_venta
					INNER JOIN productos AS p ON dv.id_producto = p.id_producto
					INNER JOIN orden_de_venta AS od ON dv.id_venta = od.id_Orden
					INNER JOIN empleados AS e ON od.id_empleado = e.id_empleado
					WHERE
						f.Fecha_Emision BETWEEN fecha_inicio AND fecha_fin
					ORDER BY
						f.Fecha_Emision ASC;
				END%%

				DELIMITER ;

				-- Para usarlo se llama al procedimiento indicando el rango de fechas de ña siguiente manera:
				CALL Generar_Reporte_Ventas('2024-10-1' , '2024-10-30');


	-- 2 Stored Procedure para generar lista de proveedores que suministran los productos por categoria
			DELIMITER %%

			CREATE PROCEDURE Listar_Proveedores_Categoria(
				IN categoria_nombre VARCHAR(255)
			)
			BEGIN
				SELECT
					p.Nombre AS Nombre_Producto,
					c.Nombre AS Categoria,
					prov.Nombre AS Proveedor,
					prov.Telefono AS Telefono_Proveedor,
					prov.Email AS Email_Proveedor
				FROM
					productos AS p
				INNER JOIN categoria AS c ON p.Categoria = c.id_categoria
				INNER JOIN proveedores AS prov ON p.Proveedor = prov.id_proveedor
				WHERE
					c.Nombre = categoria_nombre
				ORDER BY
					prov.Nombre ASC;
			END%%

			DELIMITER ;

			-- Para usarlo se llama al procedimiento indicando el nombre de la categoria de la siguiente manera:
			CALL Listar_Proveedores_Categoria ('Perifericos');
            
-- LISTADO DE TRIGGERS

	-- 1 Trigger para actualizar el Stock despues de cada venta
			DELIMITER %%

			CREATE TRIGGER Actualizar_Stock_Despues_Venta
			AFTER INSERT ON detalle_de_venta
			FOR EACH ROW
			BEGIN
				UPDATE productos
				SET Stock = Stock - NEW.Cantidad
				WHERE id_producto = NEW.id_producto;
			END%%

			DELIMITER ;



	-- 2 Trigger para registral en una tabla historial el cambio de precio de los productos
			DELIMITER %%

			CREATE TRIGGER Registro_Cambios_Precio
			AFTER UPDATE ON productos
			FOR EACH ROW
			BEGIN
			
				IF OLD.Precio <> NEW.Precio THEN
					
					INSERT INTO historial_precios (id_producto, precio_anterior, precio_nuevo, fecha_cambio)
					VALUES (NEW.id_producto, OLD.Precio, NEW.Precio, NOW());
				END IF;
			END%%

			DELIMITER ;
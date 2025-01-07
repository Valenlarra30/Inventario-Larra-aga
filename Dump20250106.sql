-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: articulos_de_computacion
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id_Categoria` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id_Categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Procesadores'),(2,'Mothers'),(3,'Placa de Video'),(4,'Memorias RAM'),(5,'Almacenamiento'),(6,'Gabinetes'),(7,'Fuentes'),(8,'Monitores'),(9,'Perifericos'),(10,'Conectividad'),(11,'Laptops'),(12,'Impresoras');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_Cliente` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_Cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Santiago','Toloza','Calle 5','Santitoloza@gmail.com'),(2,'Matias','Gimenez','Calle 18','Matigimenez@gmail.com'),(3,'Florencia ','Chiribelo','Calle 36','Florchiri@gmail.com'),(4,'Ignacio','Maestro Puch','Calle 131','Nachomp@gmail.com'),(5,'Belen ','Abreu','Calle 578','Buelenabreu@gmail.com'),(6,'Tomas','Parmo','Calle 74','tomiparmo@gmail.com'),(7,'Santiago','Lopez','Calle 25','Santilopez7@gmail.com'),(8,'Mia','Alves','Calle 12','miaalves@gmail.com'),(9,'Baltasar','Barcia','Calle 8','baltabar@gmail.com'),(10,'Rodrigo','Rey','Calle 33','Rodrirey@gmail.com'),(11,'Nayla','Gallo','Calle 15','NaylaGa@gmail.com'),(12,'Lautaro','Millan','Calle 21','Lautimillan18@gmail.com'),(13,'Ivan ','Marcone','Calle 678','ivanMarcone23@gmail.com'),(14,'Micaela ','Lopez','Calle 115 ','Micalopez@gmail.com'),(15,'Juan Manuel','Fedorco','Calle 156 ','jmfedorco@gmail.com');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_de_venta`
--

DROP TABLE IF EXISTS `detalle_de_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_de_venta` (
  `id_Detalle` int NOT NULL AUTO_INCREMENT,
  `id_Venta` int DEFAULT NULL,
  `id_Producto` int DEFAULT NULL,
  `Cantidad` int NOT NULL,
  `Precio_Unitario` decimal(10,2) NOT NULL,
  `Subtotal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_Detalle`),
  KEY `id_Venta` (`id_Venta`),
  KEY `id_Producto` (`id_Producto`),
  CONSTRAINT `detalle_de_venta_ibfk_1` FOREIGN KEY (`id_Venta`) REFERENCES `orden_de_venta` (`id_Orden`),
  CONSTRAINT `detalle_de_venta_ibfk_2` FOREIGN KEY (`id_Producto`) REFERENCES `productos` (`id_Producto`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_de_venta`
--

LOCK TABLES `detalle_de_venta` WRITE;
/*!40000 ALTER TABLE `detalle_de_venta` DISABLE KEYS */;
INSERT INTO `detalle_de_venta` VALUES (1,1,12,1,19999.00,19999.00),(2,1,7,1,12999.00,12999.00),(3,1,13,3,7999.00,7999.00),(4,2,3,1,39999.00,39999.00),(5,2,18,1,4999.00,4999.00),(6,3,9,1,14999.00,14999.00),(7,4,15,1,9999.00,9999.00),(8,4,2,1,5949.00,5949.00),(9,4,11,1,49999.00,49999.00),(10,4,5,2,5999.00,11998.00),(11,4,1,1,8999.00,8999.00),(12,5,8,1,9999.00,9999.00),(13,5,19,1,3999.00,3999.00),(14,6,4,2,119999.00,239998.00),(15,6,10,1,17999.00,17999.00),(16,7,27,1,49999.00,49999.00),(17,7,13,9,7999.00,71991.00),(18,8,14,2,14999.00,29998.00),(19,8,16,1,8999.00,8999.00),(20,8,17,2,19999.00,39998.00),(21,8,20,1,29999.00,29999.00),(22,9,21,1,39999.00,39999.00),(23,9,23,2,15999.00,31998.00),(24,10,24,1,7999.00,7999.00),(25,11,25,2,7999.00,15998.00),(26,11,32,2,12999.00,25998.00),(27,12,27,3,49999.00,149997.00),(28,12,41,1,24999.00,24999.00),(29,12,38,1,7999.00,7999.00),(30,13,3,2,39999.00,79998.00),(31,14,25,1,7999.00,7999.00),(32,15,2,1,14999.00,14999.00),(33,16,21,2,39999.00,79998.00),(34,16,34,4,9999.00,39996.00),(35,16,7,2,12999.00,25998.00),(36,17,12,2,19999.00,39998.00),(37,18,15,5,9999.00,49995.00),(38,19,44,1,12999.00,12999.00),(39,19,17,2,19999.00,39998.00),(40,20,40,2,7999.00,15998.00),(41,20,4,1,119999.00,119999.00),(42,20,2,2,5949.00,11898.00),(43,20,35,2,6999.00,13998.00),(44,20,31,2,8999.00,17998.00),(45,20,36,2,6999.00,13998.00);
/*!40000 ALTER TABLE `detalle_de_venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Actualizar_Stock_Despues_Venta` AFTER INSERT ON `detalle_de_venta` FOR EACH ROW BEGIN
			UPDATE productos
			SET Stock = Stock - NEW.Cantidad
			WHERE id_producto = NEW.id_producto;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_Empleado` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Salario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_Empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Santiago','Montiel','2923650689',620000.00),(2,'Felipe','Loyola','2923433431',620000.00);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturas` (
  `id_Factura` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `Fecha_Emision` date NOT NULL,
  `Total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_Factura`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `orden_de_venta` (`id_Cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (1,1,'2024-10-01',56995.00),(2,2,'2024-10-01',44998.00),(3,3,'2024-10-03',14999.00),(4,4,'2024-10-04',86994.00),(5,5,'2024-10-06',13998.00),(6,6,'2024-10-06',257997.00),(7,7,'2024-10-06',121990.00),(8,8,'2024-10-07',108994.00),(9,9,'2024-10-09',71997.00),(10,10,'2024-10-10',7999.00),(11,11,'2024-10-11',41996.00),(12,12,'2024-10-13',182995.00),(13,13,'2024-10-13',79998.00),(14,14,'2024-10-15',7999.00),(15,15,'2024-10-15',14999.00),(16,5,'2024-10-16',145992.00),(17,11,'2024-10-17',39998.00),(18,2,'2024-10-17',19995.00),(19,9,'2024-10-18',52997.00),(20,1,'2024-10-20',193889.00);
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `historial_clientes`
--

DROP TABLE IF EXISTS `historial_clientes`;
/*!50001 DROP VIEW IF EXISTS `historial_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `historial_clientes` AS SELECT 
 1 AS `Cliente`,
 1 AS `id_Factura`,
 1 AS `Fecha_Emision`,
 1 AS `Total_Comprado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `inventario_actual`
--

DROP TABLE IF EXISTS `inventario_actual`;
/*!50001 DROP VIEW IF EXISTS `inventario_actual`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `inventario_actual` AS SELECT 
 1 AS `id_producto`,
 1 AS `Producto`,
 1 AS `Stock_Inicial`,
 1 AS `Stock_Actual`,
 1 AS `Categoria`,
 1 AS `Proveedor`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orden_de_venta`
--

DROP TABLE IF EXISTS `orden_de_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orden_de_venta` (
  `id_Orden` int NOT NULL AUTO_INCREMENT,
  `id_Cliente` int DEFAULT NULL,
  `id_Empleado` int DEFAULT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`id_Orden`),
  KEY `id_Cliente` (`id_Cliente`),
  KEY `id_Empleado` (`id_Empleado`),
  CONSTRAINT `orden_de_venta_ibfk_1` FOREIGN KEY (`id_Cliente`) REFERENCES `clientes` (`id_Cliente`),
  CONSTRAINT `orden_de_venta_ibfk_2` FOREIGN KEY (`id_Empleado`) REFERENCES `empleados` (`id_Empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_de_venta`
--

LOCK TABLES `orden_de_venta` WRITE;
/*!40000 ALTER TABLE `orden_de_venta` DISABLE KEYS */;
INSERT INTO `orden_de_venta` VALUES (1,1,1,'2024-10-01'),(2,2,2,'2024-10-01'),(3,3,2,'2024-10-03'),(4,4,2,'2024-10-04'),(5,5,2,'2024-10-06'),(6,6,1,'2024-10-06'),(7,7,1,'2024-10-06'),(8,8,2,'2024-10-07'),(9,9,1,'2024-10-09'),(10,10,1,'2024-10-10'),(11,11,2,'2024-10-11'),(12,12,1,'2024-10-13'),(13,13,1,'2024-10-13'),(14,14,1,'2024-10-15'),(15,15,1,'2024-10-15'),(16,5,2,'2024-10-16'),(17,11,2,'2024-10-17'),(18,2,1,'2024-10-17'),(19,9,1,'2024-10-18'),(20,1,2,'2024-10-20');
/*!40000 ALTER TABLE `orden_de_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `id_Pago` int NOT NULL AUTO_INCREMENT,
  `id_Orden` int DEFAULT NULL,
  `Fecha_Pago` date NOT NULL,
  `Metodo_Pago` varchar(50) DEFAULT NULL,
  `Monto` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_Pago`),
  KEY `id_Orden` (`id_Orden`),
  CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`id_Orden`) REFERENCES `orden_de_venta` (`id_Orden`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,1,'2024-10-01','Efectivo',56995.00),(2,2,'2024-10-01','Transferencia',44998.00),(3,3,'2024-10-03','Transferencia',14999.00),(4,4,'2024-10-04','Credito',86994.00),(5,5,'2024-10-06','Credito',13998.00),(6,6,'2024-10-06','Credito',257997.00),(7,7,'2024-10-06','Transferencia',121990.00),(8,8,'2024-10-07','Transferencia',108994.00),(9,9,'2024-10-09','Efectivo',71997.00),(10,10,'2024-10-10','Transferencia',7999.00),(11,11,'2024-10-11','Credito',41996.00),(12,12,'2024-10-13','Efectivo',182995.00),(13,13,'2024-10-13','Efectivo',79998.00),(14,14,'2024-10-15','Efectivo',7999.00),(15,15,'2024-10-15','Credito',14999.00),(16,5,'2024-10-16','Credito',145992.00),(17,11,'2024-10-17','Credito',39998.00),(18,2,'2024-10-17','Efectivo',19995.00),(19,9,'2024-10-18','Transferencia',52997.00),(20,1,'2024-10-20','Transferencia',193889.00);
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_Producto` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` text,
  `Precio` decimal(10,2) DEFAULT NULL,
  `Stock` int NOT NULL,
  `Categoria` int DEFAULT NULL,
  `Proveedor` int DEFAULT NULL,
  PRIMARY KEY (`id_Producto`),
  KEY `Categoria` (`Categoria`),
  KEY `Proveedor` (`Proveedor`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`Categoria`) REFERENCES `categoria` (`id_Categoria`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`Proveedor`) REFERENCES `proveedores` (`id_Proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Teclado Mecánico RGB','Teclado mecánico con iluminación RGB personalizable y switches mecánicos.',8999.00,49,9,2),(2,'Mouse Gamer','Mouse ergonómico con DPI ajustable hasta 16000 y botones programables.',5949.00,71,9,3),(3,'Monitor 4K UHD','Monitor 4K UHD de 27 pulgadas con HDR y tasa de refresco de 144Hz.',39999.00,17,8,5),(4,'Laptop Ultrabook','Laptop ultradelgada con procesador Intel i7 y 16GB de RAM.',119999.00,7,11,2),(5,'Disco Duro Externo 1TB','Disco duro externo portátil con USB 3.1 y velocidad de transferencia rápida.',5999.00,98,5,4),(6,'Tarjeta Gráfica RTX 4060','Tarjeta gráfica de última generación con 12GB de VRAM y soporte para ray tracing.',49999.00,15,3,6),(7,'Fuente de Poder 750W','Fuente de poder certificada 80 PLUS Gold con diseño modular.',12999.00,27,7,2),(8,'Audífonos Inalámbricos','Audífonos Bluetooth con cancelación de ruido activa y batería de 24 horas.',9999.00,59,9,4),(9,'Impresora Multifuncional','Impresora 3 en 1 (impresión, escaneo, copia) con conectividad inalámbrica.',14999.00,24,12,3),(10,'Router WiFi 6','Router inalámbrico con soporte WiFi 6 y velocidades de hasta 3000Mbps.',17999.00,39,10,1),(11,'Procesador Intel i9','Procesador Intel Core i9 de décima generación con 10 núcleos y 20 hilos.',49999.00,24,1,1),(12,'Motherboard ATX','Motherboard ATX con soporte para procesadores Intel y AMD, y múltiples ranuras PCIe.',19999.00,27,2,2),(13,'Memoria RAM 16GB','Memoria RAM DDR4 de 16GB con velocidad de 3200MHz.',7999.00,38,4,5),(14,'SSD 1TB','Unidad de estado sólido (SSD) de 1TB con interfaz NVMe y alta velocidad de lectura/escritura.',14999.00,38,5,4),(15,'Gabinete ATX','Gabinete ATX con panel lateral de vidrio templado y soporte para refrigeración líquida.',9999.00,14,6,5),(16,'Fuente de Poder 650W','Fuente de poder certificada 80 PLUS Bronze con diseño semi-modular.',8999.00,34,7,6),(17,'Monitor Full HD','Monitor Full HD de 24 pulgadas con tasa de refresco de 75Hz.',19999.00,46,8,6),(18,'Teclado Inalámbrico','Teclado inalámbrico con batería recargable y diseño ergonómico.',4999.00,59,9,6),(19,'Mouse Inalámbrico','Mouse inalámbrico con sensor óptico de alta precisión y batería recargable.',3999.00,69,9,3),(20,'Router Mesh','Sistema de router mesh con cobertura de hasta 5000 pies cuadrados y soporte para WiFi 6.',29999.00,14,10,1),(21,'Procesador AMD Ryzen 7','Procesador AMD Ryzen 7 de tercera generación con 8 núcleos y 16 hilos.',39999.00,17,1,4),(22,'Motherboard Micro-ATX','Motherboard Micro-ATX con soporte para procesadores Intel y múltiples ranuras PCIe.',14999.00,25,2,2),(23,'Memoria RAM 32GB','Memoria RAM DDR4 de 32GB con velocidad de 3600MHz.',15999.00,28,4,5),(24,'HDD 2TB','Disco duro mecánico (HDD) de 2TB con interfaz SATA y alta capacidad de almacenamiento.',7999.00,49,5,6),(25,'Gabinete Micro-ATX','Gabinete Micro-ATX con diseño compacto y soporte para refrigeración líquida.',7999.00,22,6,5),(26,'Fuente de Poder 850W','Fuente de poder certificada 80 PLUS Platinum con diseño modular.',15999.00,20,7,5),(27,'Monitor Curvo','Monitor curvo de 32 pulgadas con resolución QHD y tasa de refresco de 144Hz.',49999.00,6,8,4),(28,'Teclado Mecánico Compacto','Teclado mecánico compacto con switches mecánicos y retroiluminación RGB.',6999.00,40,9,2),(29,'Mouse Vertical','Mouse vertical ergonómico con sensor óptico de alta precisión.',4999.00,50,9,2),(30,'Extensor de Rango WiFi','Extensor de rango WiFi con soporte para WiFi 6 y velocidades de hasta 1200Mbps.',9999.00,30,10,1),(31,'Procesador Intel i5','Procesador Intel Core i5 de décima generación con 6 núcleos y 12 hilos.',29999.00,28,1,3),(32,'Motherboard Mini-ITX','Motherboard Mini-ITX con soporte para procesadores AMD y múltiples ranuras PCIe.',12999.00,18,2,5),(33,'Memoria RAM 8GB','Memoria RAM DDR4 de 8GB con velocidad de 2400MHz.',3999.00,60,4,6),(34,'SSD 500GB','Unidad de estado sólido (SSD) de 500GB con interfaz SATA y alta velocidad de lectura/escritura.',9999.00,46,5,1),(35,'Gabinete Mini-ITX','Gabinete Mini-ITX con diseño compacto y soporte para refrigeración líquida.',6999.00,13,6,3),(36,'Fuente de Poder 500W','Fuente de poder certificada 80 PLUS Silver con diseño no modular.',6999.00,38,7,4),(37,'Monitor 1080p','Monitor 1080p de 24 pulgadas con tasa de refresco de 60Hz.',14999.00,30,8,1),(38,'Teclado Ergonómico','Teclado ergonómico con diseño dividido y teclas mecánicas.',7999.00,49,9,2),(39,'Mouse para Juegos','Mouse para juegos con sensor óptico de alta precisión y botones programables.',6999.00,60,9,3),(40,'Router Gigabit','Router gigabit con soporte para WiFi 5 y velocidades de hasta 1000Mbps.',7999.00,23,10,5),(41,'Procesador AMD Ryzen 5','Procesador AMD Ryzen 5 de tercera generación con 6 núcleos y 12 hilos.',24999.00,39,1,1),(42,'Motherboard ATX Gaming','Motherboard ATX para gaming con soporte para procesadores Intel y múltiples ranuras PCIe.',17999.00,30,2,4),(43,'Memoria RAM 64GB','Memoria RAM DDR4 de 64GB con velocidad de 3200MHz.',29999.00,20,4,3),(44,'HDD 4TB','Disco duro mecánico (HDD) de 4TB con interfaz SATA y alta capacidad de almacenamiento.',12999.00,29,5,1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Registro_Cambios_Precio` AFTER UPDATE ON `productos` FOR EACH ROW BEGIN
		
			IF OLD.Precio <> NEW.Precio THEN
				
				INSERT INTO historial_precios (id_producto, precio_anterior, precio_nuevo, fecha_cambio)
				VALUES (NEW.id_producto, OLD.Precio, NEW.Precio, NOW());
			END IF;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `productos_sin_vender`
--

DROP TABLE IF EXISTS `productos_sin_vender`;
/*!50001 DROP VIEW IF EXISTS `productos_sin_vender`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productos_sin_vender` AS SELECT 
 1 AS `id_producto`,
 1 AS `Producto`,
 1 AS `Categoria`,
 1 AS `Proveedor`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id_Proveedor` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_Proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Tech Supplies S.A.','Av. Siempre Viva 123, Buenos Aires','011-1234-5678','contacto@techsupplies.com'),(2,'Gamer Gear Inc.','Calle Falsa 456, La Plata','0221-9876-5432','ventas@gamergear.com'),(3,'UltraTech Distributors','Av. Libertador 789, Mendoza','0261-2345-6789','info@ultratech.com'),(4,'High-End Hardware Ltd.','Calle Principal 101, Córdoba','0351-3456-7890','soporte@highendhardware.com'),(5,'Storage Solutions Co.','Av. San Martín 202, Rosario','0341-4567-8901','almacenamiento@storagesolutions.com'),(6,'Graphics Galore','Calle Secundaria 303, Mar del Plata','0223-5678-9012','graficos@graphicsgalore.com');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ventas_por_categoria`
--

DROP TABLE IF EXISTS `ventas_por_categoria`;
/*!50001 DROP VIEW IF EXISTS `ventas_por_categoria`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventas_por_categoria` AS SELECT 
 1 AS `Categoria`,
 1 AS `Total_Productos`,
 1 AS `Total_Ventas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ventas_por_empleado`
--

DROP TABLE IF EXISTS `ventas_por_empleado`;
/*!50001 DROP VIEW IF EXISTS `ventas_por_empleado`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventas_por_empleado` AS SELECT 
 1 AS `Empleado`,
 1 AS `Total_ventas`,
 1 AS `Total_Productos`,
 1 AS `Total_Generado`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'articulos_de_computacion'
--

--
-- Dumping routines for database 'articulos_de_computacion'
--
/*!50003 DROP FUNCTION IF EXISTS `Proveedor_por_Producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Proveedor_por_Producto`(id_Producto INT) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE Nombre_Proveedor VARCHAR(100);
    
    Select prov.Nombre 
    INTO Nombre_Proveedor
    FROM Productos AS p
	INNER JOIN proveedores AS prov ON p.proveedor = prov.id_proveedor
    WHERE p.id_producto = id_producto;
    
	RETURN IFNULL(nombre_proveedor, 'Proveedor no encontrado');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Stock_Disponible` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Stock_Disponible`(id_Producto INT) RETURNS int
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Generar_Reporte_Ventas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Generar_Reporte_Ventas`(
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
			END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar_Proveedores_Categoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar_Proveedores_Categoria`(
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
		END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `historial_clientes`
--

/*!50001 DROP VIEW IF EXISTS `historial_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `historial_clientes` AS select `cl`.`Apellido` AS `Cliente`,`f`.`id_Factura` AS `id_Factura`,`f`.`Fecha_Emision` AS `Fecha_Emision`,sum((`dv`.`Cantidad` * `dv`.`Precio_Unitario`)) AS `Total_Comprado` from ((`facturas` `f` join `clientes` `cl` on((`f`.`id_cliente` = `cl`.`id_Cliente`))) join `detalle_de_venta` `dv` on((`f`.`id_cliente` = `dv`.`id_Venta`))) group by `cl`.`Apellido`,`f`.`id_Factura`,`f`.`Fecha_Emision` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inventario_actual`
--

/*!50001 DROP VIEW IF EXISTS `inventario_actual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inventario_actual` AS select `p`.`id_Producto` AS `id_producto`,`p`.`Nombre` AS `Producto`,`p`.`Stock` AS `Stock_Inicial`,(`p`.`Stock` - ifnull(sum(`dv`.`Cantidad`),0)) AS `Stock_Actual`,`c`.`Nombre` AS `Categoria`,`prov`.`Nombre` AS `Proveedor` from (((`productos` `p` left join `detalle_de_venta` `dv` on((`p`.`id_Producto` = `dv`.`id_Producto`))) join `categoria` `c` on((`c`.`id_Categoria` = `p`.`Categoria`))) join `proveedores` `prov` on((`p`.`Proveedor` = `prov`.`id_Proveedor`))) group by `p`.`id_Producto`,`p`.`Nombre`,`p`.`Stock`,`p`.`Categoria`,`prov`.`Nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `productos_sin_vender`
--

/*!50001 DROP VIEW IF EXISTS `productos_sin_vender`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productos_sin_vender` AS select `p`.`id_Producto` AS `id_producto`,`p`.`Nombre` AS `Producto`,`c`.`Nombre` AS `Categoria`,`prov`.`Nombre` AS `Proveedor` from (((`productos` `p` join `categoria` `c` on((`c`.`id_Categoria` = `p`.`Categoria`))) join `proveedores` `prov` on((`p`.`Proveedor` = `prov`.`id_Proveedor`))) left join `detalle_de_venta` `dv` on((`p`.`id_Producto` = `dv`.`id_Producto`))) where (`dv`.`id_Producto` is null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ventas_por_categoria`
--

/*!50001 DROP VIEW IF EXISTS `ventas_por_categoria`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventas_por_categoria` AS select `c`.`Nombre` AS `Categoria`,sum(`dv`.`Cantidad`) AS `Total_Productos`,sum((`dv`.`Cantidad` * `dv`.`Precio_Unitario`)) AS `Total_Ventas` from ((`detalle_de_venta` `dv` join `productos` `p` on((`dv`.`id_Producto` = `p`.`id_Producto`))) join `categoria` `c` on((`p`.`Categoria` = `c`.`id_Categoria`))) group by `c`.`Nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ventas_por_empleado`
--

/*!50001 DROP VIEW IF EXISTS `ventas_por_empleado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventas_por_empleado` AS select concat(`e`.`Apellido`,' ',`e`.`Nombre`) AS `Empleado`,count(distinct `od`.`id_Orden`) AS `Total_ventas`,count(`dv`.`id_Venta`) AS `Total_Productos`,sum((`dv`.`Cantidad` * `dv`.`Precio_Unitario`)) AS `Total_Generado` from ((`empleados` `e` left join `orden_de_venta` `od` on((`e`.`id_Empleado` = `od`.`id_Empleado`))) left join `detalle_de_venta` `dv` on((`od`.`id_Orden` = `dv`.`id_Venta`))) group by `e`.`id_Empleado`,`e`.`Apellido`,`e`.`Nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-06 10:51:01

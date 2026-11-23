--creación de la base de datos:
create database practica_u5_mod3;
use practica_u5_mod3;
-- ══════════════════════════════════════════
-- BodegaTech — Script de Inventario
-- Autor: [Felipe Baraybar]
-- Fecha: [23/11/2026]
-- ══════════════════════════════════════════
-- ── SECCIÓN DDL ──────────────────────────
-- DROP TABLE
DROP TABLE IF EXISTS inventario;
-- CREATE TABLE
CREATE TABLE inventario (ID int primary key,
nombre_producto varchar(50),
categoria varchar(50),
precio dec(10,2),
--agregué precio como decimal aceptando 10 digitos y 2 decimales
stock_actual int,
--stock actual como int ya que el stock es de numeros enteros
stock_minimo int,
fecha_ingreso date,
--fecha la definí como date 
activo bit not null default 1);
-- activo como valor booleano sin nulos y en default 1 para evitar cargarlo despues
--corroboración--
select * from inventario
-- ── SECCIÓN DML ──────────────────────────
-- INSERT INTO
insert into inventario
(ID, nombre_producto, categoria, precio,stock_actual, stock_minimo, fecha_ingreso,activo)
values
(1, 'Laptop Pro 15', 'Computación', 1200.00,15,3,'2024-1-10',1),
(2,'Mouse Inalámbrico', 'Accesorios', 28.00,80,10,'2024-1-10',1),
(3,'Monitor 4K 27"', 'Computación', 450.00,12,2,'2024-1-15',1),
(4,'Teclado Mecánico', 'Accesorios', 95.00,40,5,'2024-1-15',1),
(5,'Laptop Basic 14', 'Computación',650.00,20,3,'2024-2-1',1),
(6, 'Auriculares BT Pro', 'Audio',120.00,35,5,'2024-2-1',1),
(7, 'Hub USB-C 7 puertos', 'Accesorios', 45.00,60,10,'2024-2-10',1),
(8, 'Webcam HD 1080p','Accesorios',85.00,25,5,'2024-2-10',1),
(9,'SSD Externo 1TB','Almacenamiento', 130.00,18,3,'2024-3-1',1),
(10,'Parlante Bluetooth', 'Audio', 60.00,45,8,'2024-3-1',1);

--corroboración
select * from inventario
-- UPDATE ventas del día
--Laptop Pro 15
update inventario
set stock_actual= stock_actual-3
where id=1

-- Mouse Inalámbrico
update inventario
set stock_actual=stock_actual-12
where ID=2;

--Auriculares BT Pro
Update inventario
set stock_actual=stock_actual-5
where ID=6;
-- UPDATE producto descontinuado
update inventario
set activo=0
where id=8
-- SELECT validaciones
select * from inventario
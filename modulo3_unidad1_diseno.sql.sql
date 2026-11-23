--Creación de la tabla clientes
create table clientes (ID_Cliente INT, Nombre Varchar (100), Perfil_Bio text, Fecha_Registro date);
--Creación de la tabla productos
create table productos (ID_Producto INT, Descripcion Varchar (255), Precio Dec (10,2), Esta_Activo BIT not null default 1);
--elegí bit para la tabla Esta_activo, para que sea representado por valores booleanos
-- le dije que no acepte nulos y que por defecto sea 1, asi todos los productos están
-- activos por defecto a menos que se indique lo contrario
--corroboración
select * from clientes
select * from productos;
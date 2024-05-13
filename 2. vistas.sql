-- VISTAS

create VIEW productos_simplificados as
	select ProductID, ProductName, Price from Products
	where ProductID>20
	order by ProductID desc
	;
	
	
select * from productos_simplificados;

drop view if EXISTS productos_simplificados;


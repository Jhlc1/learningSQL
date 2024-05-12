-- SELECT
-- WHERE
-- FROM
-- HAVING

-- podemos entenederla por niveles

-- de COLUMN
-- de TABLE

select  
	od.ProductID as PID, 
	od.Quantity, 
	(select  p.Price from Products as p
		where od.ProductID= p.ProductID
	)as precio,
	(select  p.ProductName from Products as p
		where od.ProductID= p.ProductID
	)as nombre
from  OrderDetails as od;


-- Uso de subconsultas en  select, from y where
-- en select 
select 
	ProductID, 
	(select  p.ProductName from Products as p
		where od.ProductID= p.ProductID
	)as nombre,
	sum(Quantity) as unidades_vendidas,
	(select  p.Price from Products as p
		where od.ProductID= p.ProductID
	)as precio_producto,
	sum(Quantity)*(select  p.Price from Products as p
		where od.ProductID= p.ProductID) as total_recaudado
from OrderDetails as od
group by  ProductID
order by total_recaudado asc

-- en where
select 
	ProductID, 
	(select  p.ProductName from Products as p
		where od.ProductID= p.ProductID
	)as nombre,
	(select  p.Price from Products as p
		where od.ProductID= p.ProductID) as precio,
	sum(Quantity) as unidades_vendidas,
	
	sum(Quantity)*(select  p.Price from Products as p
		where od.ProductID= p.ProductID) as total_recaudado
from OrderDetails as od
where (select  p.Price from Products as p
		where od.ProductID= p.ProductID) > 50 --
group by  ProductID
order by total_recaudado asc

-- en FROM

select 
	ProductID, 
	(select  p.ProductName from Products as p
		where od.ProductID= p.ProductID
	)as nombre,
	sum(Quantity) as unidades_vendidas,
	(select  p.Price from Products as p
		where od.ProductID= p.ProductID
	)as precio_producto,
	sum(Quantity)*(select  p.Price from Products as p
		where od.ProductID= p.ProductID) as total_recaudado
from (select * from OrderDetails) as od --
group by  ProductID
order by total_recaudado asc










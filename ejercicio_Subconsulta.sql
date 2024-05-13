-- cantidad de ventas de un empleado
-- relación de 3 tablas
-- empleados que vendieron mayor cantidad que el promedio

select  FirstName, LastName,
	(
	select sum(od.Quantity) from Orders as o, OrderDetails as od
	where o.EmployeeID=e.EmployeeID and od.OrderID=o.OrderID


	) as unidades_totales
	
from Employees as e

where unidades_totales > (select avg(unidades_totales ) from (
	select (  select sum(od.Quantity) from Orders as o, OrderDetails as od -- suma de cantidades por  empleado
	where o.EmployeeID=e2.EmployeeID and od.OrderID=o.OrderID  ) as unidades_totales from Employees  as e2 -- se le nombra como unidades_totales y se selecciona
	group by e2.EmployeeID  -- agrupado por EmployeeID
))


--






(),-- JOINS
--inner, left, cross, FULL

-- CROSS JOIN
select * from Employees as e, orders  as o 

select * from Employees as e
CROSS join Orders as o

--
select * from Employees as e, orders  as o
where e.EmployeeID=o.EmployeeID

select * from Employees as e
inner join orders o on e.EmployeeID=o.EmployeeID


--
create table "Rewards"(
	"RewardID" INTEGER,
	"EmployeeID" INTEGER,
	"Reward" INTEGER,
	"Month" TEXT,
	
	PRIMARY key ("RewardID" AUTOINCREMENT )
)

--
insert into Rewards (EmployeeID,Reward,Month)VALUES
	(3,200, "January"),
	(2,180, "February"),
	(5,250, "March"),
	(1,280, "April"),
	(8,160, "May"),
	(null,null, "April")


-- inner
select * from Rewards;
select * from Employees;

select FirstName,Reward,Month from Employees as e

inner join Rewards as r 
on e.EmployeeID= r.EmployeeID

-- left
select * from Rewards;
select * from Employees;

select FirstName,Reward,Month from Employees as e

left join Rewards as r 
on e.EmployeeID= r.EmployeeID

-- right, simulando
select * from Rewards;
select * from Employees;

select FirstName,Reward,Month from Rewards as e

left join Employees as r 
on e.EmployeeID= r.EmployeeID



-- full JOIN   simulacion con left y right join
select * from Rewards;
select * from Employees;

select FirstName,Reward,Month from Employees as e

left join Rewards as r 
on e.EmployeeID= r.EmployeeID

union -- union all
		-- union all considera los datos repetidos
		-- union no considera los repetidos
select * from Rewards;
select * from Employees;

select FirstName,Reward,Month from Rewards as e

left join Employees as r 
on e.EmployeeID= r.EmployeeID
--





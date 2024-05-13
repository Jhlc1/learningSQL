-- Bloqueos y transacciones
-- shared locke
-- reserverd locke
-- EXCLUSIVE locke
 

-- begin, 
select * from Products

begin;
update Products set ProductName = "Dalto";


rollback

begin;
update Products set ProductName = "Hans"
where ProductID=1
;

commit 






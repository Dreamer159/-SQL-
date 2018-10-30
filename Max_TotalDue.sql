

select TOP 1 SalesLT.SalesOrderHeader.SalesOrderID,
SalesLT.SalesOrderHeader.TotalDue
from SalesLT.SalesOrderHeader
ORDER BY SalesLT.SalesOrderHeader.TotalDue DESC




Select 	SalesLT.SalesOrderHeader.SalesOrderID, 
	SalesLT.SalesOrderHeader.TotalDue
from SalesLT.SalesOrderHeader
where SalesLT.SalesOrderHeader.TotalDue = 
(select MAX(SalesLT.SalesOrderHeader.TotalDue) 
from SalesLT.SalesOrderHeader)
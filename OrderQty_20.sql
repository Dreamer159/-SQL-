SELECT      c.CustomerID, c.FirstName, c.MiddleName, c.LastName, Sum(d.OrderQty) as Sum, d.OrderQty
FROM        (SalesLT.Customer c INNER JOIN SalesLT.SalesOrderHeader h ON c.CustomerID = 
            h.CustomerID) INNER JOIN SalesLT.SalesOrderDetail d ON h.SalesOrderID = d.SalesOrderID
GROUP BY    c.CustomerID, c.FirstName, c.MiddleName, c.LastName, d.OrderQty
HAVING      Sum(d.OrderQty) < 20 


SELECT  c.CustomerID , c.FirstName, c.MiddleName, c.LastName
FROM SalesLT.Customer c
WHERE c.CustomerID in (
       SELECT CustomerID 
       FROM SalesLT.SalesOrderHeader h inner join SalesLT.SalesOrderDetail d on h.SalesOrderID = d.SalesOrderID
       GROUP BY CustomerID
       HAVING Sum(d.OrderQty)<20)
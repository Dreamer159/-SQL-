SELECT  SalesLt.Address.City, MONTH(SalesLT.SalesOrderHeader.DueDate) as Month,YEAR(SalesLT.SalesOrderHeader.DueDate) as Year,
        Sum(SalesLT.SalesOrderHeader.TotalDue) as Sum_Sales
FROM SalesLT.SalesOrderHeader inner join SalesLt.Address ON SalesLT.SalesOrderHeader.BillToAddressID=SalesLt.Address.AddressID
GROUP BY SalesLt.Address.City, SalesLT.SalesOrderHeader.TotalDue, SalesLT.SalesOrderHeader.DueDate
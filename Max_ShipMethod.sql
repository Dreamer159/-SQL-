SELECT Top(10) ShipMethod, PurchaseOrderNumber, DueDate, TotalDue
FROM SalesLT.SalesOrderHeader 
ORDER by TotalDue DESC
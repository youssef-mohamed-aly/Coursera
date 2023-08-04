SELECT c.CustomerID, cs.FullName, o.OrderID, o.TotalCost, m.MenuName, mi.Course, mi.Starter
FROM LittleLemonDB.CustomerDetails AS cs 
JOIN LittleLemonDB.Orders AS o ON cs.CustomerID = o.CustomerID
JOIN LittleLemonDB.Menus AS m ON o.MenuID = m.MenuID
JOIN LittleLemonDB.MenuItems as mi On mi.MenuItemID = m.MenuItemID
WHERE o.TotalCost > 150
ORDER BY o.TotalCost ASC;
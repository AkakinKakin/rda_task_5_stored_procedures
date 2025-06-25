DROP DATABASE ShopDB;
USE ShopDB; 
DROP PROCEDURE IF EXISTS get_warehouse_product_inventory;
-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(IN warehouseID INT)
BEGIN
	SELECT Products.Name AS product_name, ProductInventory.WarehouseAmount AS amount
    FROM ProductInventory
    JOIN Products
    WHERE ProductInventory.WarehouseID = warehouseID;
END //
DELIMITER ;

-- Creates a trigger that decreases the quantity of an item after adding a new order
-- DROP TRIGGER IF EXISTS reduce_quantity;
CREATE TRIGGER order_decrease AFTER INSERT ON orders
FOR EACH ROW UPDATE items
SET quantity = quantity - NEW.number
WHERE name = NEW.item_name;

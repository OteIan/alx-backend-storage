-- Decreases quantity of an item after adding a new order
DROP TRIGGER IF EXISTS update_item_number
CREATE TRIGGER update_item_number
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
        SET quantity = quantity - NEW.number
        WHERE name = NEW.item_name; 
END;

-- Resets valid_email
DROP TRIGGER IF EXISTS reset_email;

DELIMITER $$
CREATE TRIGGER reset_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    SET valid_email = 1
    WHERE OLD.email != NEW.email;
END $$
DELIMITER ;
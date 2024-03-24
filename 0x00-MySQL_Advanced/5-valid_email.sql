-- Resets valid_email
DROP TRIGGER IF EXISTS reset_email;

DELIMITER $$
CREATE TRIGGER reset_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email != NEW.email THEN
        NEW.valid_email = 0;
    ELSE
        NEW.valid_email = NEW.valid_email;
    ENDIF;
END $$
DELIMITER ;
-- Creates a function
-- Divides and returns
DROP FUNCTION IF EXISTS SafeDiv;

DELIMITER $$
CREATE FUNCTION SafeDiv (
    a INT,
    b INT
)
RETURNS FLOAT
AS
BEGIN
    IF b = 0 THEN
        RETURN 0;
    ELSE
        RETURN (a / b);
    END IF;
END $$
DELIMETER ;
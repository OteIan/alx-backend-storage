-- Creates a view
DROP VIEW IF EXISTS need_meeting;

DELIMITER $$
CREATE VIEW need_meeting
SELECT name
FROM students
WHERE score < 80 AND (last_meeting = NULL OR last_meeting > 1)
$$
DELIMITER ;
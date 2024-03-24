-- Creates a new procedure
-- That adds a new correction for student
DROP PROCEDURE IF EXISTS AddBonus;

CREATE PROCEDURE AddBonus(
    IN users_id INT,
    IN project_name VARCHAR(255),
    IN score INT
)
BEGIN
    INSERT INTO corrections (user_id, project_id, score)
    VALUES (users_id, (SELECT id FROM projects WHERE name=project_name), score);
END;
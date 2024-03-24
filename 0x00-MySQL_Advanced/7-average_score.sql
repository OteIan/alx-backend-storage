-- Creates a stored procedure
-- Computes and stores the average score for a student
DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser;

DELIMITER $$
CREATE PROCEDURE ComputeAverageScoreForUser(
    IN user_id INT
)
BEGIN
    DECLARE avg DECIMAL(10, 2) DEFAULT 0;

    SELECT AVG(score) INTO avg
        FROM corrections
        WHERE corrections.user_id=user_id;
    
    UPDATE users
        SET users.average_score=avg
        WHERE users.id=user_id;

END $$
DELIMITER ;
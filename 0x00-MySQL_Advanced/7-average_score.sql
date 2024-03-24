-- Creates a stored procedure
-- Computes and stores the average score for a student
DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser;

DELIMITER $$
CREATE PROCEDURE ComputeAverageScoreForUser(
    IN user_id INT
)
BEGIN
    DECLARE avg FLOAT DEFAULT 0;

    SELECT AVG(score) INTO avg
        FROM corrections
        WHERE user_id=user_id;
    
    UPDATE users
        SET average_score=avg
        WHERE id=user_id;

END $$
DELIMITER ;
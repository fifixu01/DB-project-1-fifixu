-- This query will use a subquery to find drivers who have earned bonuses 
-- above the average bonus amount.

SELECT D.name, B.amount
FROM Driver D
JOIN Bonuses B ON D.driver_id = B.driver_id
WHERE B.amount > (
    SELECT AVG(amount)
    FROM Bonuses
);


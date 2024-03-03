-- This query will categorize performances based on time_efficiency into 'Excellent', 
-- 'Good', and 'Needs Improvement' categories.

SELECT P.driver_id, P.date, P.time_efficiency,
CASE
    WHEN P.time_efficiency = 'Excellent' THEN 'Outstanding Performance'
    WHEN P.time_efficiency = 'Good' THEN 'Above Average Performance'
    ELSE 'Needs Improvement'
END AS performance_category
FROM Performance P;
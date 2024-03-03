-- This query will join Driver, Performance, and Route to show driver names, 
-- the dates of their performances, and the difficulty of routes they drove.

SELECT D.name, P.date, R.difficulty, P.time_efficiency
FROM Driver D
JOIN Performance P ON D.driver_id = P.driver_id
JOIN Route R ON P.route_id = R.route_id
ORDER BY D.name, P.date;


-- This query will group drivers by driver_id and select those who have completed 
-- more than an average number of stops in a day, across all their performances.

SELECT P.driver_id, AVG(P.stops_completed) AS avg_stops
FROM Performance P
GROUP BY P.driver_id
HAVING AVG(P.stops_completed) > (
    SELECT AVG(stops_completed)
    FROM Performance
);
-- This query will find performances where drivers delivered more packages than the threshold 
-- for their base pay on routes classified as "Hard" or "Very Hard".

SELECT P.driver_id, P.date, P.packages_delivered, BP.package_threshold, R.difficulty
FROM Performance P
JOIN Driver D ON P.driver_id = D.driver_id
JOIN BasePay BP ON D.basepay_id = BP.basepay_id
JOIN Route R ON P.route_id = R.route_id
WHERE P.packages_delivered > BP.package_threshold
AND R.difficulty IN ('Hard', 'Very Hard');
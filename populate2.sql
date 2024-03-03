-- Additional BasePay records
INSERT INTO BasePay (base_rate, package_threshold, extra_rate_per_package) VALUES
(14.00, 40, 0.20),
(17.50, 60, 0.35),
(16.00, 45, 0.25),
(18.00, 70, 0.40),
(15.00, 50, 0.22);

-- Additional Driver records
INSERT INTO Driver (name, contactInfo, basepay_id) VALUES
('Alex Johnson', '555-6789', 3),
('Chris Lee', '555-9876', 4),
('Pat Kim', '555-3456', 5),
('Jamie Morgan', '555-6543', 6),
('Sam Parker', '555-3210', 7);

-- Additional Route records
INSERT INTO Route (difficulty) VALUES
('Moderate'),
('Very Easy'),
('Very Hard'),
('Intermediate'),
('Challenging');

-- Additional Stops records
INSERT INTO Stops (route_id, stop_type) VALUES
(3, 'Residential'),
(4, 'Commercial'),
(5, 'Commercial'),
(6, 'Residential'),
(7, 'Residential');

-- Additional TimeTaken records
INSERT INTO TimeTaken (route_id, driver_id, date, totalTime) VALUES
(3, 3, '2023-09-02', '07:45'),
(4, 4, '2023-09-02', '08:30'),
(5, 5, '2023-09-03', '09:15'),
(6, 6, '2023-09-03', '07:30'),
(7, 7, '2023-09-04', '08:45');

-- Additional AmountOfPackages records
INSERT INTO AmountOfPackages (stop_id, date, total_packages) VALUES
(3, '2023-09-02', 30),
(4, '2023-09-02', 45),
(5, '2023-09-03', 55),
(6, '2023-09-03', 35),
(7, '2023-09-04', 60);

-- Additional Performance records
INSERT INTO Performance (driver_id, date, route_id, stops_completed, packages_delivered, time_efficiency) VALUES
(3, '2023-09-02', 3, 12, 30, 'Satisfactory'),
(4, '2023-09-02', 4, 8, 45, 'Good'),
(5, '2023-09-03', 5, 16, 55, 'Excellent'),
(6, '2023-09-03', 6, 9, 35, 'Good'),
(7, '2023-09-04', 7, 14, 60, 'Excellent');

-- Additional Bonuses records
INSERT INTO Bonuses (driver_id, date, reason, amount) VALUES
(3, '2023-09-02', 'Efficient Routing', 75.00),
(4, '2023-09-02', 'Customer Compliment', 50.00),
(5, '2023-09-03', 'No Absences Q3', 100.00),
(6, '2023-09-03', 'Top Performer Q3', 150.00),
(7, '2023-09-04', 'Safe Driving Award', 80.00);

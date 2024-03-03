INSERT INTO BasePay (basepay_id, base_rate, package_threshold, extra_rate_per_package) VALUES
(1, 15.50, 50, 0.25),
(2, 16.75, 75, 0.30);

INSERT INTO Driver (driver_id, name, contactInfo, basepay_id) VALUES
(1, 'John Doe', '555-1234', 1),
(2, 'Jane Smith', '555-5678', 2);

INSERT INTO Route (route_id, difficulty) VALUES
(1, 'Easy'),
(2, 'Hard');

INSERT INTO Stops (stop_id, route_id, stop_type) VALUES
(1, 1, 'Residential'),
(2, 2, 'Commercial');

INSERT INTO TimeTaken (timeTaken_id, route_id, driver_id, date, totalTime) VALUES
(1, 1, 1, '2023-09-01', '08:00'),
(2, 2, 2, '2023-09-01', '09:30');

INSERT INTO AmountOfPackages (packages_id, stop_id, date, total_packages) VALUES
(1, 1, '2023-09-01', 40),
(2, 2, '2023-09-01', 60);

INSERT INTO Performance (performance_id, driver_id, date, route_id, stops_completed, packages_delivered, time_efficiency) VALUES
(1, 1, '2023-09-01', 1, 10, 40, 'Good'),
(2, 2, '2023-09-01', 2, 15, 60, 'Excellent');

INSERT INTO Bonuses (bonus_id, driver_id, date, reason, amount) VALUES
(1, 1, '2023-09-01', 'Outstanding Performance', 100.00),
(2, 2, '2023-09-01', 'Perfect Attendance', 50.00);

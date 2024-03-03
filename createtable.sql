CREATE TABLE BasePay (
    basepay_id INTEGER PRIMARY KEY,
    base_rate DECIMAL,
    package_threshold INTEGER,
    extra_rate_per_package DECIMAL
);

CREATE TABLE Driver (
    driver_id INTEGER PRIMARY KEY,
    name TEXT,
    contactInfo TEXT,
    basepay_id INTEGER,
    FOREIGN KEY (basepay_id) REFERENCES BasePay(basepay_id)
);

CREATE TABLE Route (
    route_id INTEGER PRIMARY KEY,
    difficulty TEXT
);

CREATE TABLE Stops (
    stop_id INTEGER PRIMARY KEY,
    route_id INTEGER,
    stop_type TEXT,
    FOREIGN KEY (route_id) REFERENCES Route(route_id)
);

CREATE TABLE TimeTaken (
    timeTaken_id INTEGER PRIMARY KEY,
    route_id INTEGER,
    driver_id INTEGER,
    date DATE,
    totalTime TIME,
    FOREIGN KEY (route_id) REFERENCES Route(route_id),
    FOREIGN KEY (driver_id) REFERENCES Driver(driver_id)
);

CREATE TABLE AmountOfPackages (
    packages_id INTEGER PRIMARY KEY,
    stop_id INTEGER,
    date DATE,
    total_packages INTEGER,
    FOREIGN KEY (stop_id) REFERENCES Stops(stop_id)
);

CREATE TABLE Performance (
    performance_id INTEGER PRIMARY KEY,
    driver_id INTEGER,
    date DATE,
    route_id INTEGER,
    stops_completed INTEGER,
    packages_delivered INTEGER,
    time_efficiency TEXT,
    FOREIGN KEY (driver_id) REFERENCES Driver(driver_id),
    FOREIGN KEY (route_id) REFERENCES Route(route_id)
);

CREATE TABLE Bonuses (
    bonus_id INTEGER PRIMARY KEY,
    driver_id INTEGER,
    date DATE,
    reason TEXT,
    amount DECIMAL,
    FOREIGN KEY (driver_id) REFERENCES Driver(driver_id)
);

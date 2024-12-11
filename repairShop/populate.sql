-- Populate Brand table
INSERT INTO Brand (brandId, name) VALUES
(1, 'Toyota'),
(2, 'Ford'),
(3, 'Honda'),
(4, 'Chevrolet'),
(5, 'BMW');

-- Populate Model table
INSERT INTO Model (modelId, name, brandId) VALUES
(1, 'Corolla', 1),
(2, 'Camry', 1),
(3, 'F-150', 2),
(4, 'Civic', 3),
(5, 'Accord', 3),
(6, 'Silverado', 4),
(7, '3 Series', 5);

-- Populate PostalCode table
INSERT INTO PostalCode (postalCode, municipality) VALUES
('1000-001', 'Lisbon'),
('2000-002', 'Porto'),
('3000-003', 'Coimbra'),
('4000-004', 'Faro'),
('5000-005', 'Braga');

-- Populate Client table
INSERT INTO Client (clientId, name, address, postalCode, phoneNumber) VALUES
(1, 'John Doe', '123 Main St', '1000-001', '123456789'),
(2, 'Jane Smith', '456 Elm St', '2000-002', '987654321'),
(3, 'Alice Brown', '789 Oak St', '3000-003', '456123789'),
(4, 'Bob Johnson', '321 Pine St', '4000-004', '321654987'),
(5, 'Eve Davis', '654 Maple St', '5000-005', '654987321');

-- Populate Car table
INSERT INTO Car (carId, licensePlate, modelId, clientId) VALUES
(1, 'AA-11-AA', 1, 1),
(2, 'BB-22-BB', 3, 2),
(3, 'CC-33-CC', 4, 3),
(4, 'DD-44-DD', 6, 4),
(5, 'EE-55-EE', 7, 5);

-- Populate Repair table
INSERT INTO Repair (repairId, startDate, endDate, clientId, carId) VALUES
(1, '2024-01-01', '2024-01-05', 1, 1),
(2, '2024-01-06', '2024-01-10', 2, 2),
(3, '2024-01-11', '2024-01-15', 3, 3);

-- Populate Repair table without clientId
INSERT INTO Repair (repairId, startDate, endDate, carId) VALUES
(4, '2024-01-16', '2024-01-20', 4),
(5, '2024-01-21', '2024-01-25', 5);

-- Populate Part table
INSERT INTO Part (partId, code, designation, unitCost, availableQuantity) VALUES
(1, 'P001', 'Oil Filter', 20, 50),
(2, 'P002', 'Brake Pads', 40, 30),
(3, 'P003', 'Air Filter', 25, 20),
(4, 'P004', 'Spark Plug', 15, 100),
(5, 'P005', 'Battery', 80, 10);

-- Populate RepairPart table
INSERT INTO RepairPart (repairId, partId, quantity) VALUES
(1, 1, 2), -- Oil Filter for Repair 1
(1, 3, 1), -- Air Filter for Repair 1
(2, 2, 4), -- Brake Pads for Repair 2
(3, 4, 4), -- Spark Plug for Repair 3
(4, 5, 1); -- Battery for Repair 4

-- Populate Specialty table
INSERT INTO Specialty (specialtyId, name, hourlyRate) VALUES
(1, 'Mechanic', 50),
(2, 'Electrician', 60),
(3, 'Technician', 45);

-- Populate Employee table
INSERT INTO Employee (employeeId, name, address, postalCode, phoneNumber, specialtyId) VALUES
(1, 'Tom Smith', '123 Elm St', '1000-001', '123456789', 1),
(2, 'Sarah Johnson', '456 Oak St', '2000-002', '987654321', 2),
(3, 'Mike Brown', '789 Maple St', '3000-003', '456123789', 1),
(4, 'Emily Davis', '321 Pine St', '4000-004', '321654987', 3),
(5, 'James Wilson', '654 Cedar St', '5000-005', '654987321', 2);

-- Populate WorkerRepair table
INSERT INTO WorkerRepair (employeeId, repairId, numHours) VALUES
(1, 1, 5), -- Tom Smith worked on Repair 1
(2, 2, 6), -- Sarah Johnson worked on Repair 2
(3, 3, 4), -- Mike Brown worked on Repair 3
(4, 4, 3), -- Emily Davis worked on Repair 4
(5, 5, 7); -- James Wilson worked on Repair 5

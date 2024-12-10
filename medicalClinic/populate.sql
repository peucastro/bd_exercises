-- Populate Specialty table
INSERT INTO Specialty (specialtyId, name) VALUES
(1, 'Cardiology'),
(2, 'Dermatology'),
(3, 'Pediatrics'),
(4, 'Orthopedics'),
(5, 'Neurology'),
(6, 'Psychiatry'),
(7, 'Oncology'),
(8, 'Endocrinology'),
(9, 'Ophthalmology'),
(10, 'Gynecology'),
(11, 'Urology'),
(12, 'Gastroenterology'),
(13, 'Pulmonology'),
(14, 'Rheumatology'),
(15, 'Internal Medicine'),
(16, 'Family Medicine'),
(17, 'Emergency Medicine'),
(18, 'Anesthesiology'),
(19, 'Radiology'),
(20, 'Surgery');

-- Populate Doctor table
INSERT INTO Doctor (doctorId, name, tin, address, zipCode, phoneNumber, birthDate, specialtyId) VALUES
(1, 'John Smith', '123456789', '123 Main St', '12345', '555-0101', '1970-01-15', 1),
(2, 'Sarah Johnson', '234567890', '456 Oak Ave', '23456', '555-0102', '1975-03-20', 2),
(3, 'Michael Brown', '345678901', '789 Pine Rd', '34567', '555-0103', '1980-06-10', 3),
(4, 'Emily Davis', '456789012', '321 Cedar St', '45678', '555-0104', '1982-07-15', 4),
(5, 'David Wilson', '567890123', '654 Spruce Ave', '56789', '555-0105', '1988-09-22', 5),
(6, 'Sophia Taylor', '678901234', '987 Fir Rd', '67890', '555-0106', '1977-12-05', 6),
(7, 'Ethan Martinez', '789012345', '321 Palm Ln', '78901', '555-0107', '1992-03-18', 7),
(8, 'Grace Harris', '890123456', '654 Maple Ct', '89012', '555-0108', '1984-11-11', 8),
(9, 'Liam Thompson', '901234567', '987 Walnut St', '90123', '555-0109', '1990-02-09', 9),
(10, 'Isabella Moore', '012345678', '123 Cypress Blvd', '01234', '555-0110', '1985-05-19', 10),
(11, 'Mason White', '098765432', '456 Chestnut Way', '54321', '555-0111', '1993-04-22', 11),
(12, 'Charlotte Lee', '876543210', '789 Ash Dr', '65432', '555-0112', '1981-08-30', 12),
(13, 'Noah Clark', '765432109', '321 Oakwood Ave', '76543', '555-0113', '1979-07-12', 13),
(14, 'Olivia Hall', '654321098', '654 Birch Ln', '87654', '555-0114', '1991-10-07', 14),
(15, 'Lucas Young', '543210987', '987 Cedar Rd', '98765', '555-0115', '1983-06-15', 15),
(16, 'Mia Allen', '432109876', '123 Elmwood St', '87654', '555-0116', '1994-12-21', 16),
(17, 'Benjamin King', '321098765', '456 Pineview Ave', '76543', '555-0117', '1987-01-10', 17),
(18, 'Abigail Scott', '210987654', '789 Aspen Blvd', '65432', '555-0118', '1996-04-25', 18),
(19, 'Elijah Adams', '109876543', '321 Redwood Ct', '54321', '555-0119', '1995-09-05', 19),
(20, 'Amelia Baker', '019876543', '654 Willow Ln', '43210', '555-0120', '1989-02-28', 20);

-- Populate Patient table
INSERT INTO Patient (patientId, name, tin, address, zipCode, phoneNumber, birthDate) VALUES
(1, 'Emma Wilson', '987654321', '321 Elm St', '54321', '555-0201', '1990-05-25'),
(2, 'James Taylor', '876543210', '654 Maple Dr', '65432', '555-0202', '1985-08-15'),
(3, 'Olivia Davis', '765432109', '987 Birch Ln', '76543', '555-0203', '1995-11-30'),
(4, 'Liam Johnson', '654321098', '123 Spruce St', '12345', '555-0204', '1992-03-12'),
(5, 'Sophia Brown', '543210987', '456 Pine Ave', '23456', '555-0205', '1989-07-08'),
(6, 'Noah Martinez', '432109876', '789 Willow Blvd', '34567', '555-0206', '1993-02-25'),
(7, 'Mia Anderson', '321098765', '321 Aspen Ct', '45678', '555-0207', '1997-06-13'),
(8, 'Ethan Harris', '210987654', '654 Redwood Dr', '56789', '555-0208', '1984-11-09'),
(9, 'Isabella Clark', '109876543', '987 Oakwood Ln', '67890', '555-0209', '1991-10-22'),
(10, 'Ava White', '019876543', '123 Cedar Ave', '78901', '555-0210', '1987-12-05'),
(11, 'Benjamin Thompson', '198765432', '456 Birch Blvd', '89012', '555-0211', '1994-04-01'),
(12, 'Charlotte Lee', '287654321', '789 Maple St', '90123', '555-0212', '1988-05-14'),
(13, 'Lucas Hall', '376543210', '321 Elmwood Dr', '01234', '555-0213', '1983-01-20'),
(14, 'Amelia Young', '465432109', '654 Aspen Rd', '54321', '555-0214', '1990-09-07'),
(15, 'Mason King', '554321098', '987 Oak Ln', '65432', '555-0215', '1986-06-18'),
(16, 'Harper Baker', '643210987', '123 Spruce Way', '76543', '555-0216', '1995-03-30'),
(17, 'Elijah Scott', '732109876', '456 Pineview Blvd', '87654', '555-0217', '1982-08-04'),
(18, 'Grace Adams', '821098765', '789 Willow St', '98765', '555-0218', '1999-07-21'),
(19, 'Henry Moore', '910987654', '321 Redwood Ln', '87654', '555-0219', '1996-12-15'),
(20, 'Victoria Evans', '019876543', '654 Cypress Dr', '76543', '555-0220', '1985-11-28');

-- Populate Schedule table
INSERT INTO Schedule (scheduleId, doctorId, date) VALUES
(1, 1, '2024-01-01'),
(2, 2, '2024-01-02'),
(3, 3, '2024-01-03'),
(4, 4, '2024-01-04'),
(5, 5, '2024-01-05'),
(6, 6, '2024-01-06'),
(7, 7, '2024-01-07'),
(8, 8, '2024-01-08'),
(9, 9, '2024-01-09'),
(10, 10, '2024-01-10'),
(11, 11, '2024-01-11'),
(12, 12, '2024-01-12'),
(13, 13, '2024-01-13'),
(14, 14, '2024-01-14'),
(15, 15, '2024-01-15'),
(16, 16, '2024-01-16'),
(17, 17, '2024-01-17'),
(18, 18, '2024-01-18'),
(19, 19, '2024-01-19'),
(20, 20, '2024-01-20'),
(21, 1, '2024-01-21'),
(22, 2, '2024-01-22'),
(23, 3, '2024-01-23'),
(24, 4, '2024-01-24'),
(25, 5, '2024-01-25'),
(26, 6, '2024-01-26'),
(27, 7, '2024-01-27'),
(28, 8, '2024-01-28'),
(29, 9, '2024-01-29'),
(30, 10, '2024-01-30'),
(31, 11, '2024-01-31'),
(32, 12, '2024-02-01'),
(33, 13, '2024-02-02'),
(34, 14, '2024-02-03'),
(35, 15, '2024-02-04'),
(36, 16, '2024-02-05'),
(37, 17, '2024-02-06'),
(38, 18, '2024-02-07'),
(39, 19, '2024-02-08'),
(40, 20, '2024-02-09'),
(41, 1, '2024-02-10'),
(42, 2, '2024-02-11'),
(43, 3, '2024-02-12'),
(44, 4, '2024-02-13'),
(45, 5, '2024-02-14'),
(46, 6, '2024-02-15'),
(47, 7, '2024-02-16'),
(48, 8, '2024-02-17'),
(49, 9, '2024-02-18'),
(50, 10, '2024-02-19');

-- Populate Consultation table
INSERT INTO Consultation (consultationId, doctorId, patientId) VALUES
(1, 1, 1),
(2, 2, 3),
(3, 3, 2),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20);

-- Populate Medication table
INSERT INTO Medication (medicationId, name, lab, administrationMode, doctorId, patientId) VALUES
(1, 'Aspirin', 'Bayer', 'Oral', 1, 1),
(2, 'Amoxicillin', 'Pfizer', 'Oral', 2, 2),
(3, 'Ibuprofen', 'Johnson & Johnson', 'Oral', 3, 3),
(4, 'Metformin', 'Merck', 'Oral', 4, 4),
(5, 'Lisinopril', 'Novartis', 'Oral', 5, 5),
(6, 'Omeprazole', 'AstraZeneca', 'Oral', 6, 6),
(7, 'Atorvastatin', 'Pfizer', 'Oral', 7, 7),
(8, 'Albuterol', 'Teva', 'Inhaler', 8, 8),
(9, 'Prednisone', 'Bayer', 'Oral', 9, 9),
(10, 'Insulin Glargine', 'Sanofi', 'Injection', 10, 10),
(11, 'Levothyroxine', 'Abbott', 'Oral', 11, 11),
(12, 'Losartan', 'Merck', 'Oral', 12, 12),
(13, 'Clopidogrel', 'Bristol-Myers', 'Oral', 13, 13),
(14, 'Cetirizine', 'Johnson & Johnson', 'Oral', 14, 14),
(15, 'Paracetamol', 'GSK', 'Oral', 15, 15),
(16, 'Warfarin', 'Boehringer', 'Oral', 16, 16),
(17, 'Ciprofloxacin', 'Bayer', 'Oral', 17, 17),
(18, 'Furosemide', 'Sanofi', 'Oral', 18, 18),
(19, 'Simvastatin', 'Merck', 'Oral', 19, 19),
(20, 'Gabapentin', 'Pfizer', 'Oral', 20, 20);

-- Populate Prescription table
INSERT INTO Prescription (prescriptionId, medicationId, date, doctorId, patientId) VALUES
(1, 1, '2024-01-15', 1, 1),
(2, 2, '2024-01-16', 2, 2),
(3, 3, '2024-01-17', 3, 3),
(4, 4, '2024-01-18', 4, 4),
(5, 5, '2024-01-19', 5, 5),
(6, 6, '2024-01-20', 6, 6),
(7, 7, '2024-01-21', 7, 7),
(8, 8, '2024-01-22', 8, 8),
(9, 9, '2024-01-23', 9, 9),
(10, 10, '2024-01-24', 10, 10),
(11, 11, '2024-01-25', 11, 11),
(12, 12, '2024-01-26', 12, 12),
(13, 13, '2024-01-27', 13, 13),
(14, 14, '2024-01-28', 14, 14),
(15, 15, '2024-01-29', 15, 15),
(16, 16, '2024-01-30', 16, 16),
(17, 17, '2024-01-31', 17, 17),
(18, 18, '2024-02-01', 18, 18),
(19, 19, '2024-02-02', 19, 19),
(20, 20, '2024-02-03', 20, 20);

-- Populate MedicationPrescription table
INSERT INTO MedicationPrescription (prescriptionId, medicationId, numPackages) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 3),
(4, 4, 1),
(5, 5, 2),
(6, 6, 3),
(7, 7, 1),
(8, 8, 2),
(9, 9, 1),
(10, 10, 2),
(11, 11, 1),
(12, 12, 3),
(13, 13, 2),
(14, 14, 1),
(15, 15, 2),
(16, 16, 1),
(17, 17, 3),
(18, 18, 2),
(19, 19, 1),
(20, 20, 2);

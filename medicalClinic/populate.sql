INSERT INTO Specialty (specialtyId, name) VALUES (1, 'ortopeday');
INSERT INTO Specialty (specialtyId, name) VALUES (2, 'oftalmologia');
INSERT INTO Specialty (specialtyId, name) VALUES (3, 'otorrinolaringologia');

INSERT INTO Person (personId, name, vat, address, zipCode, phoneNumber, birthDate)
	VALUES (1, 'Jose Andrade Simoes', '117689827', 'Av. da Republica, 105, Vila do Conde', '4340-121', '936254908', '1959-05-17');
INSERT INTO Person (personId, name, vat, address, zipCode, phoneNumber, birthDate)
	VALUES (2, 'Ana Fernandes de Oliveira', '132459827', 'Rua Amalia Rodrigues, 375, 2ºDir, Penafiel', '4500-240', '917689325', '1965-12-12');
INSERT INTO Person (personId, name, vat, address, zipCode, phoneNumber, birthDate)
	VALUES (3, 'Fernando Carlos Goncalves Cardoso', '109365809', 'Rua de Timor, 327 1 Esq, Vila Nova de Gaia', '4300-029', '964517329', '1973-04-03');
INSERT INTO Person (personId, name, vat, address, zipCode, phoneNumber, birthDate)
	VALUES (4, 'Mariana Guedes de Araujo', '111091452', 'Rua de Recarei, 10, Porto', '4000-350', '925938479', '1981-11-03');
INSERT INTO Person (personId, name, vat, address, zipCode, phoneNumber, birthDate)
	VALUES (5, 'Carlos Antunes de Vasconcelos', '129430908', 'Rua Diogo Borges, 102 5 Dir T, Porto', '4000-080', '936254908', '1959-05-17');
INSERT INTO Person (personId, name, vat, address, zipCode, phoneNumber, birthDate)
	VALUES (6, 'Marilia de Jesus Almeida', '121110903', 'Carreiro da Lama, 27, Lousada', '4560-390', '912829354', '1984-03-11');
INSERT INTO Person (personId, name, vat, address, zipCode, phoneNumber, birthDate)
	VALUES (7, 'Joao Carvalho e Silva', '102394465', 'Rua 15, 372 2 Dir, Espinho', '4600-520', '902009412', '1952-02-27');
INSERT INTO Person (personId, name, vat, address, zipCode, phoneNumber, birthDate)
	VALUES (8, 'Armando Botelho Veiga', '101320890', 'Rua da preciosa, 105 2 Dir, Porto', '4200-450', '936254908', '1959-05-17');
INSERT INTO Person (personId, name, vat, address, zipCode, phoneNumber, birthDate)
	VALUES (9, 'Belmira de Mesquita Seixas', '121146915', 'Rua da restauracao', '4250-805', '924928356', '1979-07-19');
INSERT INTO Person (personId, name, vat, address, zipCode, phoneNumber, birthDate)
	VALUES (10, 'Rui Manuel Alves de Sousa', '105310083', 'Avenida do casino, 110 7 Dir, Povoa de Varzim', '4600-750', '913097891', '1967-01-07');
INSERT INTO Person (personId, name, vat, address, zipCode, phoneNumber, birthDate)
	VALUES (11, 'Manuel Veloso Gomes', '100430152', 'Rua de Golgota, 32, Porto', '4000-300', '918276890', '1984-06-15');
INSERT INTO Person (personId, name, vat, address, zipCode, phoneNumber, birthDate)
	VALUES (12, 'Ines Salgado Barbosa', '125340728', 'Rua de Timor, 327 3 Esq, Paredes', '4580-730', '923908612', '1982-03-19');
INSERT INTO Person (personId, name, vat, address, zipCode, phoneNumber, birthDate)
	VALUES (13, 'Ana Rita Santos Ribeiro', '111525746', 'Av. Julio Pereira, 312, Penafiel', '4560-392', '962305460', '1966-10-20');
INSERT INTO Person (personId, name, vat, address, zipCode, phoneNumber, birthDate)
	VALUES (14, 'Rute Lopes Duarte', '107320568', 'Rua 22, 93, Espinho', '4600-320', '924097301', '1962-01-11');
INSERT INTO Person (personId, name, vat, address, zipCode, phoneNumber, birthDate)
	VALUES (15, 'Luisa Faria Leal', '102560798', 'Rua do Mirante, 200, Porto', '4000-210', '918147275', '1956-08-02');

INSERT INTO Doctor (doctorId, specialtyId) VALUES (1,1);
INSERT INTO Doctor (doctorId, specialtyId) VALUES (2,1);
INSERT INTO Doctor (doctorId, specialtyId) VALUES (3,2);
INSERT INTO Doctor (doctorId, specialtyId) VALUES (4,2);
INSERT INTO Doctor (doctorId, specialtyId) VALUES (5,2);
INSERT INTO Doctor (doctorId, specialtyId) VALUES (6,3);

INSERT INTO Patient (patientId, profession) VALUES (7,'advogado');
INSERT INTO Patient (patientId, profession) VALUES (8,'electrecista');
INSERT INTO Patient (patientId, profession) VALUES (9,'contabilista');
INSERT INTO Patient (patientId, profession) VALUES (10,'marceneiro');
INSERT INTO Patient (patientId, profession) VALUES (11,'comerciante');
INSERT INTO Patient (patientId, profession) VALUES (12,'enfermeiro');
INSERT INTO Patient (patientId, profession) VALUES (13,'professor');
INSERT INTO Patient (patientId, profession) VALUES (14,'politico');
INSERT INTO Patient (patientId, profession) VALUES (15,'taxista');

INSERT INTO Schedule (scheduleId, startTime, numPatients) VALUES (1, 9.30, 8);
INSERT INTO Schedule (scheduleId, startTime, numPatients) VALUES (2, 10, 2);
INSERT INTO Schedule (scheduleId, startTime, numPatients) VALUES (3, 14, 10);
INSERT INTO Schedule (scheduleId, startTime, numPatients) VALUES (4, 14, 6);

INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (1, '2017-05-02', 1);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (1, '2017-05-03', 1);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (1, '2017-05-04', 1);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (1, '2017-05-05', 1);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (2, '2017-05-02', 2);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (2, '2017-05-03', 2);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (2, '2017-05-04', 3);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (2, '2017-05-05', 2);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (3, '2017-05-02', 3);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (3, '2017-05-03', 3);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (3, '2017-05-04', 3);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (3, '2017-05-05', 3);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (4, '2017-05-02', 1);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (4, '2017-05-03', 1);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (4, '2017-05-04', 2);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (4, '2017-05-05', 2);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (5, '2017-05-02', 2);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (5, '2017-05-03', 3);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (5, '2017-05-04', 2);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (5, '2017-05-05', 2);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (6, '2017-05-02', 4);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (6, '2017-05-03', 4);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (6, '2017-05-04', 4);
INSERT INTO DoctorSchedule (doctorId, day, scheduleId) VALUES (6, '2017-05-05', 4);

INSERT INTO Appointment (appointmentId, date, startTime, fee, report, healthStatus, doctorId, patientId)
	VALUES (1, '2017-05-02', 9.30, 40, 'fisura na tibia esquerda', 'Amarelo', 1, 10);
INSERT INTO Appointment (appointmentId, date, startTime, fee, report, healthStatus, doctorId, patientId)
	VALUES (2, '2017-05-02', 10, 30, 'entorse do tornozelo direito', 'Amarelo', 1, 12);
INSERT INTO Appointment (appointmentId, date, startTime, fee, report, healthStatus, doctorId, patientId)
	VALUES (3, '2017-05-02', 11, 40, 'rutura de ligamentos pe direito', 'Vermelho', 1, 13);
INSERT INTO Appointment (appointmentId, date, startTime, fee, report, healthStatus, doctorId, patientId)
	VALUES (4, '2017-05-03', 10, 40, 'Sindrome de Quervain no pulso esquerdo', 'Verde', 1, 14);
INSERT INTO Appointment (appointmentId, date, startTime, fee, report, healthStatus, doctorId, patientId)
	VALUES (5, '2017-05-02', 14, 40, 'hipermetropia do olho esquerdo', 'Amarelo', 3, 10);
INSERT INTO Appointment (appointmentId, date, startTime, fee, report, healthStatus, doctorId, patientId)
	VALUES (6, '2017-05-05', 10, 40, 'hipermetropia do olho esquerdo', 'Amarelo', 5, 9);
INSERT INTO Appointment (appointmentId, date, startTime, fee, report, healthStatus, doctorId, patientId)
	VALUES (7, '2017-05-02', 14.30, 40, 'hipermetropia do olho esquerdo', 'Amarelo', 3, 12);
INSERT INTO Appointment (appointmentId, date, startTime, fee, report, healthStatus, doctorId, patientId)
	VALUES (8, '2017-05-05', 10.30, 30, 'hipermetropia do olho esquerdo', 'Amarelo', 5, 13);
INSERT INTO Appointment (appointmentId, date, startTime, fee, report, healthStatus, doctorId, patientId)
	VALUES (9, '2017-05-06', 15, 40, 'hipermetropia do olho esquerdo', 'Amarelo', 3, 15);

INSERT INTO Prescription (prescriptionId, date, doctorId, patientId) VALUES (1, '2017-05-02', 1, 10);
INSERT INTO Prescription (prescriptionId, date, doctorId, patientId) VALUES (2, '2017-05-02', 1, 12);
INSERT INTO Prescription (prescriptionId, date, doctorId, patientId) VALUES (3, '2017-05-02', 1, 13);
INSERT INTO Prescription (prescriptionId, date, doctorId, patientId) VALUES (4, '2017-05-03', 1, 14);
INSERT INTO Prescription (prescriptionId, date, doctorId, patientId) VALUES (5, '2017-05-03', 3, 10);
INSERT INTO Prescription (prescriptionId, date, doctorId, patientId) VALUES (6, '2017-05-04', 5, 9);
INSERT INTO Prescription (prescriptionId, date, doctorId, patientId) VALUES (7, '2017-05-05', 3, 12);
INSERT INTO Prescription (prescriptionId, date, doctorId, patientId) VALUES (8, '2017-05-05', 5, 13);

INSERT INTO Medication (medicationId, name, laboratory, administrationMode, quantityPerPackage)
	VALUES (1, 'ben-u-ron', 'bene', 'oral', 10);
INSERT INTO Medication (medicationId, name, laboratory, administrationMode, quantityPerPackage)
	VALUES (2, 'clamoxil', 'SmithKline Beecham Pharmaceuticals', 'oral', 4);

INSERT INTO MedicationPrescription(prescriptionId, medicationId, numberPackages) VALUES (2, 1, 1);
INSERT INTO MedicationPrescription(prescriptionId, medicationId, numberPackages) VALUES (1, 2, 1);
INSERT INTO MedicationPrescription(prescriptionId, medicationId, numberPackages) VALUES (3, 1, 1);
INSERT INTO MedicationPrescription(prescriptionId, medicationId, numberPackages) VALUES (3, 2, 2);

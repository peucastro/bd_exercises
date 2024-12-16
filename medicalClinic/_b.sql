-- Use triggers to: Do not allow the insertion of a prescription, if the patient has not had any consultation with the doctor on a date prior (or equal) to the date of the prescription.

CREATE TRIGGER _B
BEFORE INSERT ON Prescription
FOR EACH ROW
WHEN NOT EXISTS (SELECT * FROM Appointment WHERE patientId = NEW.patientId AND doctorId = NEW.doctorId and date <= NEW.date)
BEGIN
    SELECT RAISE(ABORT, 'Prescriptions are only allowed with a prior consultation with the respective doctor.');
END;

-- Trying to insert a not valid Prescription:
INSERT INTO Prescription VALUES(9, '2017-05-04', 5, 13);
-- Trying to insert a valid Prescription:
INSERT INTO Prescription VALUES(10, '2017-05-06', 5, 13);

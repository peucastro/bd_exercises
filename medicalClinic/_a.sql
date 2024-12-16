-- Use triggers to: Do not allow scheduling a consultation with the same start time as another consultation, on the same day, with the same doctor.

CREATE TRIGGER _A
BEFORE INSERT ON Appointment
FOR EACH ROW
WHEN EXISTS (SELECT * FROM Appointment WHERE startTime = NEW.startTime AND date = NEW.date AND doctorId = NEW.doctorId)
BEGIN
    SELECT RAISE(ABORT, 'Only one appointment is allowed with the same doctor, for the same day, at the same time.');
END;

-- Trying to insert a not valid appointment:
INSERT INTO Appointment VALUES(10, '2017-05-05', 10, 40, 'gripe', 'Verde', 5, 10);
-- Trying to insert a not valid appointment:
INSERT INTO Appointment VALUES(10, '2017-05-06', 10, 40, 'gripe', 'Verde', 5, 10);

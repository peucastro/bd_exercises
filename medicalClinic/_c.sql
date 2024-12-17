-- Use triggers to: Do not allow a new consultation to be scheduled for the day and doctor indicated, if the doctor is no longer available to see more patients on that day.

CREATE TRIGGER _C
BEFORE INSERT ON Appointment
FOR EACH ROW
WHEN (SELECT COUNT(*) FROM Appointment WHERE date = NEW.date AND doctorId = NEW.doctorId) = (
    SELECT S.numPatients
    FROM DoctorSchedule DS JOIN Schedule S ON S.scheduleId = DS.scheduleID
    WHERE DS.doctorId = NEW.doctorId AND DS.day = NEW.date
)
BEGIN
    SELECT RAISE(ABORT, "Cannor exceed the doctor's max patients number.");
END;


-- Trying to schedule an appointment to a free doctor.
INSERT INTO Appointment VALUES(10, '2017-05-02', 10, 30, 'entorse do tornozelo direito', 'Amarelo', 2, 12);
INSERT INTO Appointment VALUES(11, '2017-05-02', 11, 30, 'fisura na tibia esquerda', 'Amarelo', 2, 12);
-- Trying to schedule an appointment to a full doctor.
INSERT INTO Appointment VALUES(12, '2017-05-02', 12, 30, 'entorse do tornozelo direito', 'Amarelo', 2, 12);

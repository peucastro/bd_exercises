-- Use triggers to: If, when inserting a repair, the client is not specified, assume that the client is the owner of the car.

CREATE TRIGGER _B
AFTER INSERT ON Repair
WHEN NEW.clientId IS NULL
BEGIN
    UPDATE Repair
    SET clientId = (SELECT C.clientId FROM Car C WHERE C.carId = NEW.carId)
    WHERE Repair.repairId = NEW.repairId;
END;

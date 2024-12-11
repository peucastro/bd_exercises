-- Use triggers to: Automatically update the parts available quantity after inserting records in the RepairPart table.

CREATE TRIGGER _A
AFTER INSERT ON RepairPart
FOR EACH ROW
BEGIN
    UPDATE Part
    SET availableQuantity = availableQuantity - NEW.quantity
    WHERE Part.partId = NEW.partId;
END;

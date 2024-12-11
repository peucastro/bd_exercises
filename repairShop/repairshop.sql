PRAGMA FOREIGN_KEYS = ON;

DROP TABLE IF EXISTS Car;
DROP TABLE IF EXISTS RepairPart;
DROP TABLE IF EXISTS WorkerRepair;
DROP TABLE IF EXISTS Repair;
DROP TABLE IF EXISTS Part;
DROP TABLE IF EXISTS Model;
DROP TABLE IF EXISTS Brand;
DROP TABLE IF EXISTS Client;
DROP TABLE IF EXISTS PostalCode;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Specialty;

CREATE TABLE
    Brand (
        brandId INTEGER CONSTRAINT brand_PK PRIMARY KEY,
        name TEXT CONSTRAINT brand_name_not_null NOT NULL
    );

CREATE TABLE
    Model (
        modelId INTEGER CONSTRAINT model_PK PRIMARY KEY,
        name TEXT CONSTRAINT model_name_not_null NOT NULL,
        brandId INTEGER CONSTRAINT model_brand_not_null NOT NULL,
        CONSTRAINT model_brand_FK FOREIGN KEY (brandId) REFERENCES Brand (brandId) ON DELETE CASCADE ON UPDATE CASCADE
    );

CREATE TABLE
    PostalCode (
        postalCode TEXT CONSTRAINT postalCode_PK PRIMARY KEY,
        municipality TEXT CONSTRAINT postalCode_municipality_not_null NOT NULL
    );

CREATE TABLE
    Client (
        clientId INTEGER CONSTRAINT client_PK PRIMARY KEY,
        name TEXT CONSTRAINT client_name_not_null NOT NULL,
        address TEXT,
        postalCode TEXT CONSTRAINT client_postalCode_not_null NOT NULL,
        phoneNumber TEXT CONSTRAINT client_phoneNumber_not_null NOT NULL,
        CONSTRAINT client_postalCode_FK FOREIGN KEY (postalCode) REFERENCES PostalCode (postalCode) ON DELETE CASCADE ON UPDATE CASCADE
    );

CREATE TABLE
    Car (
        carId INTEGER CONSTRAINT car_PK PRIMARY KEY,
        licensePlate TEXT CONSTRAINT car_licensePlate_not_null NOT NULL,
        modelId INTEGER CONSTRAINT car_model_not_null NOT NULL,
        clientId INTEGER CONSTRAINT car_client_not_null NOT NULL,
        CONSTRAINT car_model_FK FOREIGN KEY (modelId) REFERENCES Model (modelId) ON DELETE CASCADE ON UPDATE CASCADE,
        CONSTRAINT car_client_FK FOREIGN KEY (clientId) REFERENCES Client (clientId) ON DELETE CASCADE ON UPDATE CASCADE
    );

CREATE TABLE
    Repair (
        repairId INTEGER CONSTRAINT repair_PK PRIMARY KEY,
        startDate DATE,
        endDate DATE,
        clientId INTEGER,
        carId INTEGER CONSTRAINT repair_car_not_null NOT NULL,
        CONSTRAINT repair_client_FK FOREIGN KEY (clientId) REFERENCES Client (clientId) ON DELETE CASCADE ON UPDATE CASCADE,
        CONSTRAINT repair_car_FK FOREIGN KEY (carId) REFERENCES Car (carId) ON DELETE CASCADE ON UPDATE CASCADE
    );

CREATE TABLE
    Part (
        partId INTEGER CONSTRAINT part_PK PRIMARY KEY,
        code TEXT CONSTRAINT part_code_not_null NOT NULL,
        designation TEXT,
        unitCost INTEGER,
        availableQuantity INTEGER
    );

CREATE TABLE
    RepairPart (
        repairId INTEGER CONSTRAINT repairPart_repair_not_null NOT NULL,
        partId INTEGER CONSTRAINT repairPart_part_not_null NOT NULL,
        quantity INTEGER CONSTRAINT repairPart_quantity_not_null NOT NULL,
        CONSTRAINT repairPart_PK PRIMARY KEY (repairId, partId),
        CONSTRAINT repairPart_repair_FK FOREIGN KEY (repairId) REFERENCES Repair (repairId) ON DELETE CASCADE ON UPDATE CASCADE,
        CONSTRAINT repairPart_part_FK FOREIGN KEY (partId) REFERENCES Part (partId) ON DELETE CASCADE ON UPDATE CASCADE
    );

CREATE TABLE
    Specialty (
        specialtyId INTEGER CONSTRAINT specialty_PK PRIMARY KEY,
        name TEXT CONSTRAINT specialty_name_not_null NOT NULL,
        hourlyRate INTEGER CONSTRAINT specialty_hourlyRate_not_null NOT NULL
    );

CREATE TABLE
    Employee (
        employeeId INTEGER CONSTRAINT employee_PK PRIMARY KEY,
        name TEXT CONSTRAINT employee_name_not_null NOT NULL,
        address TEXT,
        postalCode TEXT CONSTRAINT employee_postalCode_not_null NOT NULL,
        phoneNumber TEXT,
        specialtyId INTEGER CONSTRAINT employee_specialty_not_null NOT NULL,
        CONSTRAINT employee_postalCode_FK FOREIGN KEY (postalCode) REFERENCES PostalCode (postalCode) ON DELETE CASCADE ON UPDATE CASCADE,
        CONSTRAINT employee_specialty_FK FOREIGN KEY (specialtyId) REFERENCES specialty (specialtyId) ON DELETE CASCADE ON UPDATE CASCADE
    );

CREATE TABLE
    WorkerRepair (
        employeeId INTEGER CONSTRAINT workerRepair_employee_not_null NOT NULL,
        repairId INTEGER CONSTRAINT workerRepair_repair_not_null NOT NULL,
        numHours INTEGER CONSTRAINT workerRepair_numHours_not_null NOT NULL,
        CONSTRAINT workerRepair_PK PRIMARY KEY (employeeId, repairId),
        CONSTRAINT workerRepair_employee_FK FOREIGN KEY (employeeId) REFERENCES Employee (employeeId) ON DELETE CASCADE ON UPDATE CASCADE,
        CONSTRAINT workerRepair_repair_FK FOREIGN KEY (repairId) REFERENCES Repair (repairId) ON DELETE CASCADE ON UPDATE CASCADE
    );

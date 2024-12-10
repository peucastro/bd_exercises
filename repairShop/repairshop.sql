PRAGMA FOREIGN_KEYS = ON;

DROP TABLE IF EXISTS Car;

DROP TABLE IF EXISTS Repair;

DROP TABLE IF EXISTS Model;

DROP TABLE IF EXISTS Brand;

DROP TABLE IF EXISTS Client;

DROP TABLE IF EXISTS PostalCode;

CREATE TABLE
    Brand (
        brandId INTEGER CONSTRAINT brand_PK PRIMARY KEY,
        name TEXT CONSTRAINT brand_name_not_null NOT NULL
    );

CREATE TABLE
    Model (
        modelId INTEGER CONSTRAINT model_PK PRIMARY KEY,
        name TEXT CONSTRAINT model_name_not_null NOT NULL brandId INTEGER,
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
        postalCode TEXT,
        phoneNumber TEXT CONSTRAINT client_phoneNumber_not_null NOT NULL,
        CONSTRAINT client_postalCode_FK FOREIGN KEY (postalCode) REFERENCES PostalCode (postalCode) ON DELETE CASCADE ON UPDATE CASCADE
    );

CREATE TABLE
    Car (
        carId INTEGER CONSTRAINT car_PK PRIMARY KEY,
        licensePlate TEXT CONSTRAINT car_licensePlate_not_null NOT NULL,
        modelId INTEGER,
        clientId INTEGER,
        CONSTRAINT car_model_FK FOREIGN KEY (modelId) REFERENCES Model (modelId) ON DELETE CASCADE ON UPDATE CASCADE,
        CONSTRAINT car_client_FK FOREIGN KEY (clientId) REFERENCES Client (clientId) ON DELETE CASCADE ON UPDATE CASCADE
    );

CREATE TABLE
    Repair (
        repairId INTEGER CONSTRAINT repair_PK PRIMARY KEY,
        startDate DATE,
        endDate DATE,
        clientId INTEGER,
        carId INTEGER,
        CONSTRAINT repair_client_FK FOREIGN KEY (clientId) REFERENCES Client (clientId),
        CONSTRAINT repair_car_FK FOREIGN KEY (carId) REFERENCES Car (carId)
    );

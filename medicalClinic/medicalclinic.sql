PRAGMA FOREIGN_KEYS = ON;

DROP TABLE IF EXISTS MedicationPrescription;
DROP TABLE IF EXISTS Medication;
DROP TABLE IF EXISTS Prescription;
DROP TABLE IF EXISTS Appointment;
DROP TABLE IF EXISTS DoctorSchedule;
DROP TABLE IF EXISTS Schedule;
DROP TABLE IF EXISTS Patient;
DROP TABLE IF EXISTS Doctor;
DROP TABLE IF EXISTS Person;
DROP TABLE IF EXISTS Specialty;

CREATE TABLE
    Specialty (specialtyId INTEGER PRIMARY KEY, name TEXT);

CREATE TABLE
    Person (
        personId INTEGER PRIMARY KEY,
        name TEXT,
        vat TEXT UNIQUE,
        address TEXT,
        zipCode TEXT,
        phoneNumber TEXT,
        birthDate TEXT
    );

CREATE TABLE
    Doctor (
        doctorId INTEGER PRIMARY KEY REFERENCES Person,
        specialtyId INTEGER REFERENCES Specialty (specialtyId)
    );

CREATE TABLE
    Patient (
        patientId INTEGER PRIMARY KEY REFERENCES Person,
        profession TEXT
    );

CREATE TABLE
    Schedule (
        scheduleId INTEGER PRIMARY KEY,
        startTime REAL,
        numPatients INTEGER
    );

CREATE TABLE
    DoctorSchedule (
        doctorId INTEGER REFERENCES Doctor (doctorId),
        scheduleId INTEGER REFERENCES Schedule (scheduleId),
        day TEXT,
        CONSTRAINT pk_doctorSchedule PRIMARY KEY (doctorId, day)
    );

CREATE TABLE
    Appointment (
        appointmentId INTEGER PRIMARY KEY,
        date TEXT,
        startTime REAL,
        fee REAL,
        report TEXT,
        healthStatus TEXT,
        doctorId INTEGER REFERENCES Doctor (doctorId),
        patientId INTEGER REFERENCES Patient (patientId)
    );

CREATE TABLE
    Prescription (
        prescriptionId INTEGER PRIMARY KEY,
        date TEXT,
        doctorId INTEGER REFERENCES Doctor (doctorId),
        patientId INTEGER REFERENCES Patient (patientId)
    );

CREATE TABLE
    Medication (
        medicationId INTEGER PRIMARY KEY,
        name TEXT,
        laboratory TEXT,
        administrationMode TEXT,
        quantityPerPackage INTEGER
    );

CREATE TABLE
    MedicationPrescription (
        prescriptionId INTEGER REFERENCES Prescription (prescriptionId),
        medicationId INTEGER REFERENCES Medication (medicationId),
        numberPackages INTEGER,
        CONSTRAINT pk_medicationPrescription PRIMARY KEY (prescriptionId, medicationId)
    );

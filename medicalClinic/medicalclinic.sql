PRAGMA FOREIGN_KEYS = ON;

DROP TABLE IF EXISTS MedicationPrescription;
DROP TABLE IF EXISTS Medication;
DROP TABLE IF EXISTS Consultation;
DROP TABLE IF EXISTS specialty;
DROP TABLE IF EXISTS Prescription;
DROP TABLE IF EXISTS Schedule;
DROP TABLE IF EXISTS Doctor;
DROP TABLE IF EXISTS Patient;

CREATE TABLE
    Specialty (
        specialtyId INTEGER CONSTRAINT specialty_PK PRIMARY KEY,
        name TEXT CONSTRAINT specialty_name_not_null NOT NULL
    );

CREATE TABLE
    Doctor (
        doctorId INTEGER CONSTRAINT doctor_PK PRIMARY KEY,
        name TEXT CONSTRAINT doctor_name_not_null NOT NULL,
        tin TEXT,
        address TEXT,
        zipCode TEXT,
        phoneNumber TEXT CONSTRAINT doctor_phoneNumber_not_null NOT NULL,
        birthDate DATE CONSTRAINT doctor_birthdate_not_null NOT NULL,
        specialtyId INTEGER CONSTRAINT doctor_specialty_not_null NOT NULL,
        CONSTRAINT doctor_specialty_FK FOREIGN KEY (specialtyId) REFERENCES specialty (specialtyId) ON DELETE CASCADE ON UPDATE CASCADE
    );

CREATE TABLE
    Patient (
        patientId INTEGER CONSTRAINT patient_PK PRIMARY KEY,
        name TEXT CONSTRAINT patient_name_not_null NOT NULL,
        tin TEXT,
        address TEXT,
        zipCode TEXT,
        phoneNumber TEXT,
        birthDate DATE CONSTRAINT patient_birthdate_not_null NOT NULL
    );

CREATE TABLE
    Schedule (
        scheduleId INTEGER CONSTRAINT doctorschedule_PK PRIMARY KEY,
        doctorId INTEGER CONSTRAINT doctorSchedule_doctor_not_null NOT NULL,
        date DATE CONSTRAINT doctor_schedule_date_not_null NOT NULL,
        CONSTRAINT doctorschedule_doctor_FK FOREIGN KEY (doctorId) REFERENCES Doctor (doctorId) ON DELETE CASCADE ON UPDATE CASCADE
    );

CREATE TABLE
    Consultation (
        consultationId INTEGER CONSTRAINT consultation_PK PRIMARY KEY,
        doctorId INTEGER CONSTRAINT consultation_doctor_not_null NOT NULL,
        patientId INTEGER consultation_patient_not_null NOT NULL,
        CONSTRAINT consultation_doctor_FK FOREIGN KEY (doctorId) REFERENCES Doctor (doctorId) ON DELETE CASCADE ON UPDATE CASCADE,
        CONSTRAINT consultation_patient_FK FOREIGN KEY (patientId) REFERENCES Patient (patientId) ON DELETE CASCADE ON UPDATE CASCADE
    );

CREATE TABLE
    Medication (
        medicationId INTEGER CONSTRAINT medication_PK PRIMARY KEY,
        name TEXT CONSTRAINT medication_name_not_null NOT NULL,
        lab TEXT,
        administrationMode TEXT,
        doctorId INTEGER CONSTRAINT medication_doctor_not_null NOT NULL,
        patientId INTEGER CONSTRAINT medication_patient_not_null NOT NULL,
        CONSTRAINT medication_doctor_FK FOREIGN KEY (doctorId) REFERENCES Doctor (doctorId) ON DELETE CASCADE ON UPDATE CASCADE,
        CONSTRAINT medication_patient_FK FOREIGN KEY (patientId) REFERENCES Patient (patientId) ON DELETE CASCADE ON UPDATE CASCADE
    );

CREATE TABLE
    Prescription (
        prescriptionId INTEGER CONSTRAINT prescription_PK PRIMARY KEY,
        medicationId INTEGER,
        date DATE CONSTRAINT prescription_date_not_null NOT NULL,
        doctorId INTEGER CONSTRAINT prescription_doctor_not_null NOT NULL,
        patientId INTEGER CONSTRAINT prescription_patient_not_null NOT NULL,
        CONSTRAINT prescription_doctor_FK FOREIGN KEY (doctorId) REFERENCES Doctor (doctorId) ON DELETE CASCADE ON UPDATE CASCADE,
        CONSTRAINT prescription_patient_FK FOREIGN KEY (patientId) REFERENCES Patient (patientId) ON DELETE CASCADE ON UPDATE CASCADE
    );

CREATE TABLE
    MedicationPrescription (
        prescriptionId INTEGER CONSTRAINT medicationPrescription_prescription_not_null NOT NULL,
        medicationId INTEGER medicationPrescription_medication_not_null NOT NULL,
        numPackages INTEGER CONSTRAINT medicationPrescription_numPackages_not_null NOT NULL,
        CONSTRAINT medicationPrescription_PK PRIMARY KEY (prescriptionId, medicationId),
        CONSTRAINT medicationPrescription_prescription_FK FOREIGN KEY (prescriptionId) REFERENCES Prescription (prescriptionId),
        CONSTRAINT medicationPrescription_medication_FK FOREIGN KEY (medicationId) REFERENCES Medication (medicationId)
    );

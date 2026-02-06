CREATE TABLE Medications (
    MedicationID INT PRIMARY KEY,
    PatientID INT,
    MedicationName VARCHAR(200),
    Dosage VARCHAR(50),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);
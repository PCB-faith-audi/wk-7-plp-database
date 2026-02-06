CREATE TABLE Diagnoses (
    DiagnosisID INT PRIMARY KEY,
    PatientID INT,
    DiagnosisDescription VARCHAR(200),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);
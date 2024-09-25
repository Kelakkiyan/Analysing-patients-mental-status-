-- your code goes here
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Diagnosis VARCHAR(50)
);
CREATE TABLE Surveys (
    SurveyID INT PRIMARY KEY,
    PatientID INT,
    DateCompleted DATE,
    AnxietyScore INT,
    DepressionScore INT,
    StressScore INT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    AppointmentDate DATE,
    ProviderName VARCHAR(50),
    Notes TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);
SELECT 
    AVG(AnxietyScore) AS AverageAnxiety,
    AVG(DepressionScore) AS AverageDepression,
    AVG(StressScore) AS AverageStress
FROM Surveys;

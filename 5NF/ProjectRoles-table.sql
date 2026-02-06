CREATE TABLE ProjectRoles (
    ProjectID INT,
    EmployeeID INT,
    Role VARCHAR(100),
    PRIMARY KEY (ProjectID, EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
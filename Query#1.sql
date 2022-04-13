CREATE DATABASE EMS;
USE EMS;
CREATE TABLE Department (
    Department_id int NOT NULL,
    Supervisor_id int NOT NULL,
    OfficeNumber int NOT NULL,
    Phone varchar(50) NOT NULL,
    CONSTRAINT Department_pk PRIMARY KEY (Department_id)
);

-- Table: Employee
CREATE TABLE Employee (
    Employee_id int NOT NULL,
    Department_id int NOT NULL,
    Name varchar(50) NOT NULL,
    Email varchar(50) NOT NULL,
    Phone varchar(50) NOT NULL,
    CONSTRAINT Employee_pk PRIMARY KEY (Employee_id)
);

-- Table: Project
CREATE TABLE Project (
    Project_id int NOT NULL,
    Department_id int NOT NULL,
    ProjectName varchar(50) NOT NULL,
    MaximumHours int NOT NULL,
    StartDate varchar(50) NOT NULL,
    EndDate varchar(50) NOT NULL,
    CONSTRAINT Project_pk PRIMARY KEY (Project_id)
);

-- Table: Qualification
CREATE TABLE Qualification (
    qualification_id int NOT NULL,
    Employee_id int NOT NULL,
    Position varchar(50) NOT NULL,
    Date varchar(50) NOT NULL,
    CONSTRAINT Qualification_pk PRIMARY KEY (qualification_id)
);

-- Table: Supervisor
CREATE TABLE Supervisor (
    Supervisor_id int NOT NULL,
    Name varchar(50) NOT NULL,
    PhoneNumber varchar(50) NOT NULL,
    CONSTRAINT Supervisor_pk PRIMARY KEY (Supervisor_id)
);

ALTER TABLE Department ADD CONSTRAINT Department_Supervisor FOREIGN KEY Department_Supervisor (Supervisor_id)
    REFERENCES Supervisor (Supervisor_id);

ALTER TABLE Employee ADD CONSTRAINT Employee_Department FOREIGN KEY Employee_Department (Department_id)
    REFERENCES Department (Department_id);

ALTER TABLE Project ADD CONSTRAINT Project_Department FOREIGN KEY Project_Department (Department_id)
    REFERENCES Department (Department_id);

ALTER TABLE Qualification ADD CONSTRAINT Qualification_Employee FOREIGN KEY Qualification_Employee (Employee_id)
    REFERENCES Employee (Employee_id);


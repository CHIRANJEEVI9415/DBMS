-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-12-17 23:53:39.252

-- tables
-- Table: Branch
CREATE TABLE Branch (
    Branch_code int NOT NULL,
    Branch_name varchar(25) NOT NULL,
    Branch_HOD varchar(25) NOT NULL,
    CONSTRAINT Branch_pk PRIMARY KEY (Branch_code)
);

-- Table: Cafeteria
CREATE TABLE Cafeteria (
    Caf_id int NOT NULL,
    Caf_type varchar(25) NOT NULL,
    Caf_owner varchar(25) NOT NULL,
    Hostel_Hostel_id int NOT NULL,
    CONSTRAINT Cafeteria_pk PRIMARY KEY (Caf_id)
);

-- Table: Hostel
CREATE TABLE Hostel (
    Hostel_id int NOT NULL,
    Hostel_type varchar(25) NOT NULL,
    Hostel_name varchar(25) NOT NULL,
    Hostel_warden varchar(25) NOT NULL,
    CONSTRAINT Hostel_pk PRIMARY KEY (Hostel_id)
);

-- Table: Room
CREATE TABLE Room (
    Room_num int NOT NULL,
    Room_capacity int NOT NULL,
    Hostel_Hostel_id int NOT NULL,
    CONSTRAINT Room_pk PRIMARY KEY (Room_num)
);

-- Table: Students
CREATE TABLE Students (
    Student_id int NOT NULL,
    Name varchar(25) NOT NULL,
    gender varchar(25) NOT NULL,
    branch varchar(25) NOT NULL,
    Room_Room_num int NOT NULL,
    Branch_Branch_code int NOT NULL,
    CONSTRAINT Students_pk PRIMARY KEY (Student_id)
);

-- foreign keys
-- Reference: Cafeteria_Hostel (table: Cafeteria)
ALTER TABLE Cafeteria ADD CONSTRAINT Cafeteria_Hostel FOREIGN KEY Cafeteria_Hostel (Hostel_Hostel_id)
    REFERENCES Hostel (Hostel_id);

-- Reference: Room_Hostel (table: Room)
ALTER TABLE Room ADD CONSTRAINT Room_Hostel FOREIGN KEY Room_Hostel (Hostel_Hostel_id)
    REFERENCES Hostel (Hostel_id);

-- Reference: Students_Branch (table: Students)
ALTER TABLE Students ADD CONSTRAINT Students_Branch FOREIGN KEY Students_Branch (Branch_Branch_code)
    REFERENCES Branch (Branch_code);

-- Reference: Students_Room (table: Students)
ALTER TABLE Students ADD CONSTRAINT Students_Room FOREIGN KEY Students_Room (Room_Room_num)
    REFERENCES Room (Room_num);

-- End of file.


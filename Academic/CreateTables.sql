CREATE TABLE Person
(
  PersonID VARCHAR(9) NOT NULL,
  LastName VARCHAR(100) NOT NULL,
  FirstName VARCHAR(100) NOT NULL,
  PRIMARY KEY (PersonID)
);

CREATE TABLE Employee
(
  address VARCHAR(100) NOT NULL,
  phone_number INT NOT NULL,
  salary INT NOT NULL,
  gender INT NOT NULL,
  PersonID VARCHAR(9) NOT NULL,
  PRIMARY KEY (PersonID),
  FOREIGN KEY (PersonID) REFERENCES Person(PersonID)
);

CREATE TABLE Baker
(
  baker_type INT NOT NULL,
  PersonID VARCHAR(9) NOT NULL,
  PRIMARY KEY (PersonID),
  FOREIGN KEY (PersonID) REFERENCES Employee(PersonID)
);

CREATE TABLE Delivery_man
(
  vehicle INT NOT NULL,
  PersonID VARCHAR(9) NOT NULL,
  PRIMARY KEY (PersonID),
  FOREIGN KEY (PersonID) REFERENCES Employee(PersonID)
);

CREATE TABLE shift
(
  shift_id VARCHAR(9) NOT NULL,
  shift_date VARCHAR(100) NOT NULL,
  num_hours INT NOT NULL,
  PRIMARY KEY (shift_id)
);

CREATE TABLE Client
(
  client_id VARCHAR(9) NOT NULL,
  address VARCHAR(100) NOT NULL,
  client_name VARCHAR(100) NOT NULL,
  PersonID VARCHAR(9) NOT NULL,
  PRIMARY KEY (client_id),
  FOREIGN KEY (PersonID) REFERENCES Delivery_man(PersonID)
);

CREATE TABLE Menu
(
  cost INT NOT NULL,
  ration_name VARCHAR(100) NOT NULL,
  ration_ingredients INT NOT NULL,
  PRIMARY KEY (ration_name)
);
CREATE TABLE bake_in
(
  PersonID VARCHAR(9) NOT NULL,
  shift_id VARCHAR(9) NOT NULL,
  PRIMARY KEY (PersonID, shift_id),
  FOREIGN KEY (PersonID) REFERENCES Baker(PersonID),
  FOREIGN KEY (shift_id) REFERENCES shift(shift_id)
);

CREATE TABLE deliver_in
(
  PersonID VARCHAR(9) NOT NULL,
  shift_id VARCHAR(9) NOT NULL,
  PRIMARY KEY (PersonID, shift_id),
  FOREIGN KEY (PersonID) REFERENCES Delivery_man(PersonID),
  FOREIGN KEY (shift_id) REFERENCES shift(shift_id)
);

CREATE TABLE orderFrom
(
  client_id VARCHAR(9) NOT NULL,
  ration_name VARCHAR(100) NOT NULL,
  PRIMARY KEY (client_id, ration_name),
  FOREIGN KEY (client_id) REFERENCES Client(client_id),
  FOREIGN KEY (ration_name) REFERENCES Menu(ration_name)
);
--   ---------------------------------------------------------------
CREATE TABLE Lecturer
(
  Expirience INT NOT NULL,
  Rank INT NOT NULL,
  PersonID VARCHAR(9) NOT NULL,
  PRIMARY KEY (PersonID),
  FOREIGN KEY (PersonID) REFERENCES Person(PersonID)
);

CREATE TABLE Student
(
  YearOfStudy INT NOT NULL,
  PersonID VARCHAR(9) NOT NULL,
  PRIMARY KEY (PersonID),
  FOREIGN KEY (PersonID) REFERENCES Person(PersonID)
);

CREATE TABLE Course
(
  Points INT NOT NULL,
  Day_Time INT NOT NULL,
  Semester INT NOT NULL,
  CourseName VARCHAR(100) NOT NULL,
  CourseID VARCHAR(100) NOT NULL,
  PersonID VARCHAR(9) NOT NULL,
  PRIMARY KEY (CourseID),
  FOREIGN KEY (PersonID) REFERENCES Lecturer(PersonID)
);

CREATE TABLE Supervisor
(
  PersonID VARCHAR(9) NOT NULL,
  PRIMARY KEY (PersonID),
  FOREIGN KEY (PersonID) REFERENCES Person(PersonID)
);

CREATE TABLE CourseTest
(
  Test_Date INT NOT NULL,
  Class INT NOT NULL,
  CourseID VARCHAR(100) NOT NULL,
  PersonID VARCHAR(9) NOT NULL,
  PRIMARY KEY (CourseID),
  FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
  FOREIGN KEY (PersonID) REFERENCES Supervisor(PersonID)
);


CREATE TABLE TestedIn
(
  Grade INT NOT NULL,
  PersonID VARCHAR(9) NOT NULL,
  CourseID VARCHAR(100) NOT NULL,
  PRIMARY KEY (PersonID, CourseID),
  FOREIGN KEY (PersonID) REFERENCES Student(PersonID),
  FOREIGN KEY (CourseID) REFERENCES CourseTest(CourseID)
);

CREATE TABLE StudyIn
(
  PersonID VARCHAR(9) NOT NULL,
  CourseID VARCHAR(100) NOT NULL,
  PRIMARY KEY (PersonID, CourseID),
  FOREIGN KEY (PersonID) REFERENCES Student(PersonID),
  FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

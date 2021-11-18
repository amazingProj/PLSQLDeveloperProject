
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

ALTER TABLE Player 
ADD Constraint position
CHECK (position > 0 and position < 6);
 
ALTER TABLE Person ADD Constraint PersonID
CHECK (Length(PersonID) = 9);

Alter Table Student 
ADD Constraint YearOfStudy
CHECK (YearOfStudy < 6 and YearOfStudy > 0);

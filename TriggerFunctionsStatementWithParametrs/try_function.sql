--begin
 -- dbms_output.put_line(MVP('123187679', '129456589', '113187679'));
--end;  

--select * from Player natural join Person;

select (select LastName from Person p where p.personid = pla.personid) AS
        Last_name,  (select FirstName from Person p where p.personid = pla.personid) AS
        First_name
from Player pla
where pla.personid = '123187679'        

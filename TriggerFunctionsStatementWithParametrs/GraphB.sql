select (select LastName from Person p where Refree.Personid = p.personid) As Last_name,
(select FirstName from Person p where Refree.Personid = p.personid) As First_Name,
(select Count(*) from Game g where g.personid = Refree.Personid) As Number_of_games
from Refree
group by personid, rexprience
having Length(personid) = 9 and rexprience >= 0
and Exists(select Lastname from person natural join Refree group by LastName, Firstname, personid 
having Length(personid) = 9 and Length(LastName) >= 3 and Length(FirstName) >= 3 
and Exists(select FirstName from Person) and Exists(select LastName from Person) )
and Exists(select FirstName from Person natural join Refree group by LastName, Firstname, personid 
having Length(personid) = 9 and Length(LastName) >= 3 
and Length(Firstname) >= 3 and Exists(select FirstName from Person) 
and Exists(select LastName from Person))
order by Last_name DESC, First_name DESC, number_of_games ASC;

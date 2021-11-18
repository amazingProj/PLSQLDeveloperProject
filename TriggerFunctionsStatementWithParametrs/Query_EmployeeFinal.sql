select (select LastName from Person p where em.Personid = p.personid) AS Last_Name, 
(select FirstName from Person p where em.personid = p.personid) As First_name,
em.address AS address, em.phone_number AS phone_number
from employee em
where (select Count(*) from Employee)
>= &< name = "number of server" TYPE = "integer" hint = "please enter a number of server">
+ &< name = "number of cleaner" type = "integer" hint = "please enter number of cleaner">
+ &< name = "number of secratary" type = "integer" hint = "please enter number of secretary">
+ &< name = "number of security men" type = "integer" hint = "please enter number of security men">
group by em.Personid, em.address, em.phone_number
having Length(em.personid) >= 3 and Exists(select address from Employee)
 and Length((select LastName from Person p where em.Personid = p.personid)) >= 3
 and Length((select FirstName from Person p where em.personid = p.personid)) >= 3
order by Last_name ASC, First_name ASC, address DESC, phone_number DESC;

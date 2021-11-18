select (select LastName from Person p where em.Personid = p.personid) AS Last_Name, 
(select FirstName from Person p where em.personid = p.personid) As First_name,
em.address AS address, em.phone_number AS phone_number,
case when mod(to_number(em.personid), 100) >= 0 and 
  mod(to_number(em.personid), 100) <  end
 */
 /* when mod(to_number(em.personid), 100) >=
    (&< name = "number of server" TYPE = "integer" hint = "please enter a number of server"> + 1)
     and mod(to_number(em.personid), 100) <= &< name = "number of server" TYPE = "integer" hint = "please enter a number of server">
     + &< name = "number of cleaner" type = "integer" hint = "please enter number of cleaner">
     when mod(to_number(em.personid), 100) between &< name = "number of server" TYPE = "integer" hint = "please enter a number of server">
     + &< name = "number of cleaner" type = "integer" hint = "please enter number of cleaner"> + 1
     and &< name = "number of server" TYPE = "integer" hint = "please enter a number of server">
+ &< name = "number of cleaner" type = "integer" hint = "please enter number of cleaner">
+ &< name = "number of secratary" type = "integer" hint = "please enter number of secretary">
     when &< name = "number of server" TYPE = "integer" hint = "please enter a number of server">
+ &< name = "number of cleaner" type = "integer" hint = "please enter number of cleaner">
+ &< name = "number of secratary" type = "integer" hint = "please enter number of secretary"> + 1
and  &< name = "number of server" TYPE = "integer" hint = "please enter a number of server">
+ &< name = "number of cleaner" type = "integer" hint = "please enter number of cleaner">
+ &< name = "number of secratary" type = "integer" hint = "please enter number of secretary">
+ &< name = "number of security men" type = "integer" hint = "please enter number of security men">
   end AS role_of_employee*/

from employee em
where (select Count(*) from Employee)
>= &< name = "number of server" TYPE = "integer" hint = "please enter a number of server">
+ &< name = "number of cleaner" type = "integer" hint = "please enter number of cleaner">
+ &< name = "number of secratary" type = "integer" hint = "please enter number of secretary">
+ &< name = "number of security men" type = "integer" hint = "please enter number of security men">
/*union 
select 
from employee em
where (select Count(*) from Employee)
< &< name = "number of server" TYPE = "integer" hint = "please enter a number of server">
+ &< name = "number of cleaner" type = "integer" hint = "please enter number of cleaner">
+ &< name = "number of secratary" type = "integer" hint = "please enter number of secretary">
+ &< name = "number of security men" type = "integer" hint = "please enter number of security men">

*/

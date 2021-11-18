Select Distinct RefreeID As ID, RefreeName As Name
from Game natural join refree
where ((select count(*)
       from Game g1
       where g1.RefreeID = RefreeID) >
(select count(*) from Game) / (select count(*) from Refree))
group by RefreeID, RefreeName
having Length(RefreeID) = 9 and Length(RefreeName) >= 3
order by RefreeID ASC, RefreeName DESC;

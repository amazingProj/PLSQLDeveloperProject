select t.coachname As name, t.teamname As team, (select Count(*) from Player p 
where p.teamname = t.teamname) As Number_of_players, t.qwnername As boss
from Team t
where (select Count(*) from Player p where p.teamname = t.teamname) >= 
&< name = "number of players" type = "integer" hint = "number of players">
and (select points from Standing s where s.teamname = t.teamname) >= 
&< name = "points of team" type = "integer" hint = "points of team">
group by t.coachname, t.teamname, t.qwnername
having Exists(select coachname from Team) and not Exists(select concat(LastName, FirstName)
 from Person where t.coachname = concat(LastName, FirstName))
order by name ASC, teamname DESC;

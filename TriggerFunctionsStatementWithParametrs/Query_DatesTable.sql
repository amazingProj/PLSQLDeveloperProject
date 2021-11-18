select g.gamedate As game_date, g.arenaname As ARENA, G.WINNERNAME AS TEAM_ONE,
G.LOSERNAME AS TEAM_TWO, (select LastName from Person where g.personid = personid) 
As Last_name,
(select FirstName from Person where g.personid = personid) As First_name
from Game g 
where g.winnername = &< name = "team" restricted = "TRUE" type = "string"
hint= "please choose teamname from the combo box" LIST = "SELECT teamname from team">
or &< name = "team" restricted = "TRUE" type = "string"
hint= "please choose teamname from the combo box" 
LIST = "SELECT teamname from team"> = g.losername
group by g.gamedate, g.arenaname, g.winnername, g.losername, g.personid
having Exists(select gamedate from  game where substr(g.gamedate, -2) = '21' )
order by game_date ASC, Arena DESC, Team_one ASC, Team_two ASC;

select t1.CoachName As Name, 
       (select Count(*) from Player natural join Team
           where t1.teamname = teamname) As number_of_players
from  Team t1
group by t1.coachname, t1.teamname
having Length(CoachName) >= 2
order by CoachName;


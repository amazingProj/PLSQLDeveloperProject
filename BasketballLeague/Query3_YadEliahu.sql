select TeamName As Name, CoachName As Coach, ArenaName As Arena 
from Team natural join Game  
group by TeamName, CoachName, ArenaName
having Length(TeamName) >= 2 and
Length(CoachName) >= 2 and Length(Arenaname) >= 3 
and (ArenaName = 'Yad Eliyahu' or ArenaName = 'Menora Arena')
minus
select TeamName As Name, CoachName As Coach, ArenaName As Arena 
from Team natural join Game
where WinnerName = TeamName 
group by TeamName, CoachName, ArenaName
having Length(TeamName) >= 2 and
Length(CoachName) >= 2 and Length(Arenaname) >= 3 
union
select TeamName As Name, CoachName As Coach, ArenaName As Arena
from Team natural join Game
where winnerName != 'maccabi Tel Aviv' and ArenaName = 'Yad Eliyahu'
group by TeamName, CoachName, ArenaName
having Length(TeamName) >= 2 and
Length(CoachName) >= 2 and Length(Arenaname) >= 3 
and (ArenaName = 'Yad Eliyahu' or ArenaName = 'Menora Arena');

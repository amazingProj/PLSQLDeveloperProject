(select playerName As Name, position As PlayedPosition
from Team natural join  Player
where teamname = 'Maccabi Palytika Tel Aviv' and position = 5
group by playerName, position 
having Length(playerName) >= 2 and position >= 1 and position <= 5
union
select playerName As Name, position As PlayedPosition
from Team natural join  Player
where teamname = 'Maccabi Palytika Tel Aviv' and position = 4
group by playerName, position 
having Length(playerName) >= 2 and position >= 1 and position <= 5
union 
select PlayerName As Name, position As PlayedPosition
from Player p1, Standing s1
where s1.teamname = p1.teamname and (p1.position = 4 or p1.position = 5)
group by playerName, position 
having Length(playerName) >= 2 and position >= 1 and position <= 5
);

 

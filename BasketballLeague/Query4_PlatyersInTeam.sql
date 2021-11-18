select distinct SemiCoachName As Semi_Coach_Name, OwnerName As Owner_Name, TeamName As Team_Name, 
PlayerName As Player_Name, CoachName As Coach_Name from Team natural join Player
where  PlayerName in (select PlayerName from (Player natural join Team)
group by PlayerName
having Length(Playername) >= 2 and count(*) >= 1 )
group by SemiCoachname, OwnerName, TeamName, PlayerName, CoachName
having Length(Playername) >= 2 and count(*) >= 1 and Length(SemiCoachname) >= 2
and Length(Ownername) >= 2 and Length(CoachName) >= 2
and Length(TeamName) >= 3
order by TeamName ASC, CoachName DESC, Semi_Coach_Name ASC;

create index relative_RefreeID
on Refree(Refreeid, RAge);
commit;
create index relative_player
on Player(PlayerName, Position);
commit;
create index relative_team
on Team(Semicoachname, Ownername, Coachname);
commit;
CREATE index relative_game
on Game(Winnername, Arenaname);
commit;   
create index relative_RefreeIDName
on Refree(Refreeid, RefreeName);
commit;

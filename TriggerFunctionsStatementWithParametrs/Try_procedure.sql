
/*begin
  PlayoffSeriesUpdated(HomeTeam => 'Maccabi Palytika Tel Aviv', HostedTeam => 'Hapoel Tel Aviv');
end;*/
/*
select * from Game g 
where Gamedate = '12/12/21';
*/
select * from Standing;


begin
 playoffseriesupdated(HomeTeam => 'Maccabi Palytika Tel Aviv', HostedTeam => 'Rishon Lezion');
end;

--select * from Game g where g.gamedate = '30/12/21' or g.gamedate = '31/12/21';
  

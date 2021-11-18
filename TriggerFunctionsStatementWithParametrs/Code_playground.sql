
select distinct ArenaName from Game;
select Count(*) / 2 from (select distinct ArenaName from Game);
select gamedate from Game;
select * from Refree;

select * from Standing;

select * from Game;

select Floor((Count(*) / 2)) --into half_of_number_of_teams
     from (select distinct TeamName from Standing);

select TeamName from Standing s2 where 

           2 = (select Count(*) from Standing s3 where s3.points > 
                            (select points from Standing s1 where s1.teamname =
                                    s2.teamname));
                                    
 select TeamName --into name_of_middle_team 
 from Standing s2 where 


           2 = (select Count(*) from Standing s3 
                                   where s3.points > 
                                     (select points from Standing s1 
                                             where s1.teamname =
                                             s2.teamname));

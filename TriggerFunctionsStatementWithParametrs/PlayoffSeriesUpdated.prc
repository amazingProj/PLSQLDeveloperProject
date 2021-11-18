create or replace procedure PlayoffSeriesUpdated(
       HomeTeam in string, HostedTeam in string) is
       zero integer := 0;
       number_of_teams integer := 0;
       number_of_arenas integer := 0;
       number_of_refrees integer := 0;
       points_of_home_team integer := 0;
       points_of_hosted_team integer := 0;
       half_of_number_of_teams integer := 0;
       position_int_standing_hosted integer := 0;
       position_in_standing_home_team integer := 0;
 
       condition1 boolean := NULL;
       name_of_middle_team Char(100);
       opponent_one Char(100);
       opponent_two Char(100);
    
       not_found_a_team exception;
       not_found_an_arena exception;
       not_found_a_refree exception;
       the_season_was_not_over_yet exception;
       there_is_a_team_without_point exception;
       not_home_and_hosted_team exception;
       not_exists_hosted_team exception;
       not_exists_home_team exception;
       automatically_to_next_level_h exception;
       null_argument exception;
       
begin
  dbms_output.enable(1000000); 
       
   --exceptions 
       
    select Count(*) into number_of_teams from Standing;
    if number_of_teams = zero then
     raise not_found_a_team;
    end if;
    
    select Count(*) into number_of_arenas from (select distinct ArenaName from Game);
    if  number_of_arenas = zero then 
         raise not_found_an_arena;
    end if;   
    
    
   select Count(*) into number_of_refrees from (select distinct personid from Refree);
   
    if number_of_refrees = zero then 
         raise not_found_a_refree;
    end if;
    
    /*
    select number_of_games into temp from (select Count(*) AS number_of_games 
                from Game g, Team t where g.losername 
                = TeamName or g.winnername = TeamName)            
                where number_of_games <= 3;
    if temp is NULL
      then condition1 := TRUE;
    else condition1 := FALSE;
    end if;  
  
    if condition1 
         then
           raise the_season_was_not_over_yet;
    end if;  
    
    select points into temp from Standing where points = zero;
    
    if temp is NULL
      then condition1 := TRUE;
    else condition1 := FALSE;
    end if;  
    
    if condition1 then
       raise there_is_a_team_without_point;
    end if;   
    
    select points into temp from Standing where homeTeam = TeamName;
    
     if temp = 0
      then condition1 := TRUE;
     else condition1 := FALSE;
     end if;  
    
    if condition1  then 
        raise not_exists_home_team;
    end if;    

    select points into temp from Standing where hostedTeam = TeamName;
    
    if temp is NULL
      then condition1 := TRUE;
    else condition1 := FALSE;
    end if;
    
    if condition1 then
                   raise not_exists_hosted_team;
    end if; 
    */
    select points into points_of_home_team from Standing where homeTeam = TeamName; 
    select points INTO points_of_hosted_team from Standing where hostedTeam = TeamName;
    
    if points_of_hosted_team > points_of_home_team then
         raise not_home_and_hosted_team;
    end if;
    
    select Count(*) into number_of_teams from Standing;  
    
    select Floor((Count(*) / 2)) into half_of_number_of_teams
     from (select distinct TeamName from Standing);
    
    condition1 := FALSE; 
    name_of_middle_team := ' ';
    
    /*
    select TeamName into name_of_middle_team from Standing s2 where 

           half_of_number_of_teams = (select Count(*) from Standing s3 
                                   where s3.points > 
                                     (select points from Standing s1 
                                             where s1.teamname =
                                             s2.teamname));
     if name_of_middle_team  <> ' ' then
       condition1 := TRUE;
     end if;                                         
     
   
    if  mod(number_of_teams, 2) = 1 then
       if  condition1 then
           raise automatically_to_next_level_h;
       end if;
    end if;
    */
    
    select Count(*) + 1 into position_in_standing_home_team from Standing s2 where s2.points > (select points from Standing s3 
             where hostedTeam =  s3.teamname);
            
    select (Count(*) + 1) into position_in_standing_home_team from Standing s 
    where s.points > (select points from Standing s1 where s1.TeamName = homeTeam);
    
    select Count(*) + 1 into position_int_standing_hosted from standing s where 
    s.points > (select points from Standing s1 where s1.Teamname = hostedTeam);
    
     if  position_in_standing_home_team + number_of_teams - position_in_standing_home_team =  
       position_int_standing_hosted then
         dbms_output.put_line('Playoff game began');
         dbms_output.put_line('Home team is ' || homeTeam);
         dbms_output.put_line('Hosted team is ' || hostedTeam);
         insert into Game(Gamedate, Arenaname, Winnername, Losername, Personid)
         values('12/12/21', 'Yad Eliyau', homeTeam, hostedTeam, 281237397);
         
       else 
         select TeamName into opponent_one from Team t where 
         position_in_standing_home_team + number_of_teams -
         position_in_standing_home_team = (select (Count(*) + 1) from Standing s 
         where s.points
         > (select points from Standing s1 where s1.teamname = t.teamname));
         
         select TeamName into opponent_two from Team t where number_of_teams
         - position_int_standing_hosted  
         = (select Count(*) from Standing s where s.points > (select points from
         Standing s2 where s2.teamname = t.teamname)) ;
       
          dbms_output.put_line(HomeTeam || ' versus ' || opponent_one);
          dbms_output.put_line(HostedTeam || ' versus ' || opponent_two);      
          insert into Game(Gamedate, Arenaname, Winnername, Losername, Personid)
          values('27/12/21', 'Yad Eliyau', homeTeam, opponent_one, 281237397);
          insert into Game(Gamedate, Arenaname, Winnername, Losername, Personid)
          values('28/12/21', 'Yad Eliyau', opponent_two, hostedTeam, 281237397);
       end if;  
                        
                   
   --exception handler
       exception
           when not_found_a_team then
             dbms_output.put_line('Zero teams in the Academy');
           when not_found_an_arena then
             dbms_output.put_line('Not found an arena');  
           when not_found_a_refree then
             dbms_output.put_line('Not found a refree'); 
           when the_season_was_not_over_yet then
             dbms_output.put_line('The season was not over yet');  
           when there_is_a_team_without_point then
             dbms_output.put_line('There is a team without a point');  
           when not_home_and_hosted_team then  
             dbms_output.put_line('Not home and hosted teams');  
           when  not_exists_hosted_team then
              dbms_output.put_line('Not exists hosted team');  
           when  not_exists_home_team then
              dbms_output.put_line('Not exists home team'); 
           when automatically_to_next_level_h then
              dbms_output.put_line('One of the teams ' || hostedTeam || ' ' || homeTeam ||
              ' ' || 'automatically go to the next level');    
   
end PlayoffSeriesUpdated;
/

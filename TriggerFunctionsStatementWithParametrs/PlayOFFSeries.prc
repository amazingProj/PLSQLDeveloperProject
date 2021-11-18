create or replace procedure PlayOFFSeries(homeTeam in String, hostedTeam in String) is



Declare 
      end_loop integer := 0;

      zero_points integer := 0;

      error_mes string := 'ERROR!!!';

      -- our statements fields

      cursor arenas is (select distinct ArenaName from Game); 
       
      cursor placeone is (select teamname from Standing where points = (select Max(points) from Standing));

      /*
      cursor Team_number_of_games is (select TeamName As teamname, (select Count(*) from Game g where TeamName = g.losername or g.winnername)
      As number_of_games
       from Team );*/

      cursor standing_final is select * from Standing order by points DESC;

      cursor refrees is select (select LastName from Person p where r.personid = p.personid) As last_name, 
      (select FirstName from Person p where r.personid = p.personid) As First_name,
      r.personid, r.rexprience from Refree r order by Last_Name DESC, First_name DESC;
           number_of_teams integer := (select Count(*) from Standing group by TeamName, points having
             Length(TeamName) >= 3 and points >= 0);

            
      number_of_arenas numeric, 
      number_of_refrees numeric,   half_standing_number numeric;



begin
       dbms_output.enable(1000000); 
       
               
      
       --initializin
       
       (select Count(*) into number_of_arenas from (select distinct ArenaName from Game);
       
       ;
       
       half_standing_number := 
       
       --exceptions 
       
       if number_of_teams = zero_found then
         raise not_found_a_team
       end if 
       
       if number_of_arena = zero_found then 
         raise not_found_an_arena
       end if   
       
       if number_of_refrees = zero_found then 
         raise not_found_a_refree
       end if 
       
       if Exists(select number_of_games from Team_number_of_games where number_of_games <= 3)
         then
           raise the_season_was_not_over_yet
       end if    
         
       if Exists(select points from Standing where points = zero_found) then
         then 
           raise there_is_a_team_without_point
       end if
       
       if not Exists(select points from Team where homeTeam = TeamName) then
         raise not_exists_home_team
       end if
       
       if not Exists(select points from Team where hostedTeam = TeamName) then
         raise not_exists_hosted_team
       end if   
       
       if ((select points from Team where homeTeam = TeamName) - 
         (select points from Team where hostedTeam = TeamName)) < 0 then
         raise not_home_and_hosted_team
       end if   
       
       if  mod(number_of_teams, 2) = 1 then
         if (select TeamName from Team where (select Count(*) from Standing s7 
                where s7.points) = hostedTeam or 
                (select TeamName from Team where (select Count(*) from Standing s7 
                where s7.points) = homeTeam then
           raise automatically_to_next_level_h
         end if 
       end if   
       
       -- main code here        
       
       if (select Count(*) from Standing s2 where s2.points > (select points from Standing s3 
             where hostedTeam =  s3.teamname)) =
             ((select Count(*) from Standing s where s.points > 
             (select points from Standing s1 where s1.TeamName = homeTeam)) + number_of_team -
             (select Count(*) from Standing s where s.points > 
             (select points from Standing s1 where s1.TeamName = homeTeam)) ) then
         dbms_output.put_line('Playoff game began');
         dbms_output.put_line('Home team is ' || homeTeam);
         dbms_output.put_line('Hosted team is ' || hostedTeam);
         insert into Game(Gamedate, Arenaname, Winnername, Losername, Personid)
         values('12/12/21', 'Yad Eliyau', homeTeam, hostedTeam, 281237397);
         
       else 
         opponent_one string = (select TeamName from Team where (select Count(*) from Standing s5 
         where s5.points) = ((select Count(*) from Standing s where s.points > 
             (select points from Standing s1 where s1.TeamName = homeTeam)) + number_of_team -
             (select Count(*) from Standing s where s.points > 
             (select points from Standing s1 where s1.TeamName = homeTeam)) ) ;
          opponent_two string = ((select Count(*) from Standing s where s.points > 
             (select points from Standing s1 where s1.TeamName = hostedTeam));
          dbms_output.put_line(HomeTeam || ' versus ' || opponent_one);
          dbms_output.put_line(HostedTeam || ' versus ' || opponent_two);      
          insert into Game(Gamedate, Arenaname, Winnername, Losername, Personid)
          values('12/12/21', 'Yad Eliyau', homeTeam, opponent_one, 281237397);
          insert into Game(Gamedate, Arenaname, Winnername, Losername, Personid)
          values('12/12/21', 'Yad Eliyau', opponent_two, hostedTeam, 281237397);
       end if  
       
       
       --exception handler
       exception
           when not_found_a_team then
             dbms_output.put_line('Zero teams in the Academy');
           when not_found_an_arena then
             dbms_output.put_line('Not found an arena');  
           when not_found_a_refree
             dbms_output.put_line('Not found a refree'); 
           when the_season_was_not_over_yet
             dbms_output.put_line('The season was not over yet');  
           when there_is_a_team_without_point
             dbms_output.put_line('There is a team without a point');  
           when not_home_and_hosted_team   
             dbms_output.put_line('Not home and hosted teams');  
           when  not_exists_hosted_team
              dbms_output.put_line('Not exists hosted team');  
           when  not_exists_home_team
              dbms_output.put_line('Not exists home team'); 
           when automatically_to_next_level_h
              dbms_output.put_line('One of the teams ' || hostedTeam || ' ' || homeTeam ||
              ' ' || 'automatically go to the next level');    
              
end PlayOFFSeries;
/

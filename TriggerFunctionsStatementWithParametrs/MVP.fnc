create or replace function MVP(
       candidate_id_one in string, 
       candidate_id_two in string, 
       candidate_id_three in string
       ) return Varchar 
       is 
        Result Varchar(100); 
 
       candidate_three_points integer;
       candidate_one_team_points integer;
       candidate_two_team_points integer;
       candidate_three_team_points integer; 
       candidate_one_points integer;
       candidate_two_points integer;
  
       candidate_one_team Char(100);
       candidate_two_team Char(100);
       candidate_three_team Char(100); 
       number_of_games_of_TEAM_c_one INTEGER;
       number_of_games_of_TEAM_c_two INTEGER;
       number_of_games_of_TEAM_c_th INTEGER;
 

begin
   
  candidate_one_points := 10;
  candidate_two_points := 10;
  candidate_three_points := 15;
  
  
  select TeamName into candidate_one_team
  from Player p
  where p.personid = candidate_id_one;
                 
  select TeamName into candidate_two_team
  from Player p
  where   p.personid = candidate_id_two;
                 
  select TeamName into candidate_three_team
  from Player p
  where   p.personid = candidate_id_three;
   
  select points into candidate_one_team_points from standing
  where teamname = (select TeamName 
                    from Player p
                    where   p.personid = candidate_id_two);              
  
  select points into candidate_two_team_points from standing
  where teamname = (select TeamName 
                    from Player p
                    where   p.personid = candidate_id_two);
  
  select points into candidate_three_team_points from standing
  where teamname = (select TeamName
                    from Player p
                    where   p.personid = candidate_id_three);                    
  
  case 
    when candidate_one_team_points >= 10 
      and candidate_one_team_points <= 20
      then
        candidate_one_points := candidate_one_points
        + 5;
     when candidate_one_team_points > 20 and 
          candidate_one_team_points <= 30
          then
             candidate_one_points := candidate_one_points
             + 10;
             
     when candidate_one_team_points > 30 and 
          candidate_one_team_points <= 50
          then
             candidate_one_points := candidate_one_points
             + 12;
             
      when candidate_three_team_points >= 10 
      and candidate_three_team_points <= 20
      then
        candidate_three_points := candidate_three_points
        + 5;
     when candidate_three_team_points > 20 and 
          candidate_three_team_points <= 30
          then
             candidate_three_points := candidate_three_points
             + 10;
             
     when candidate_three_team_points > 30 and 
          candidate_three_team_points <= 50
          then
             candidate_three_points := candidate_three_points
             + 12;        
      when candidate_two_team_points >= 10 
      and candidate_two_team_points <= 20
      then
        candidate_two_points := candidate_two_points
        + 5;
     when candidate_two_team_points > 20 and 
          candidate_two_team_points <= 30
          then
             candidate_two_points := candidate_two_points
             + 10;
             
     when candidate_two_team_points > 30 and 
          candidate_two_team_points <= 50
          then
             candidate_two_points := candidate_two_points
             + 12;        
                      
      
  end case;                                    
  
  select Count(*) into number_of_games_of_TEAM_c_one 
  from Game g
  where g.winnername = candidate_two_team or
  g.losername = candidate_two_team;
  
  select Count(*) into number_of_games_of_TEAM_c_two 
  from Game g
  where g.winnername = candidate_two_team or
  g.losername = candidate_two_team;
   
  select Count(*) into number_of_games_of_TEAM_c_th
  from Game g
  where g.winnername = candidate_three_team or
  g.losername = candidate_three_team;        
   
  case 
    when number_of_games_of_TEAM_c_one > number_of_games_of_TEAM_c_two
      and number_of_games_of_TEAM_c_one > number_of_games_of_TEAM_c_th
      then
        candidate_one_points := candidate_one_points + 10;
     when number_of_games_of_TEAM_c_two > number_of_games_of_TEAM_c_one
       and number_of_games_of_TEAM_c_two > number_of_games_of_TEAM_c_th
       then 
            candidate_two_points := candidate_two_points + 10; 
            candidate_one_points := candidate_one_points - 1;
      when number_of_games_of_TEAM_c_th > number_of_games_of_TEAM_c_two
        and number_of_games_of_TEAM_c_th > number_of_games_of_TEAM_c_one
        then 
            candidate_three_points := candidate_three_points + 13;  
            
    else
       candidate_three_points := candidate_three_points + 5;
       candidate_one_points := candidate_one_points + 7;
        candidate_one_points := candidate_one_points + 3;
         
  end case;  
            
  if candidate_one_points > candidate_two_points then
    if candidate_one_points > candidate_three_points
      then
        result := candidate_id_one;
    else
      result := candidate_id_three;   
    end if;
  else
    if candidate_two_points > candidate_three_points then
      result := candidate_id_two;
    else 
      result := candidate_id_three;  
    end if;      
  end if; 
  return(Result);
end MVP;
/

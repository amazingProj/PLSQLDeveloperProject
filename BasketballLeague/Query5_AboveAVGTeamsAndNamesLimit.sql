Select Distinct TeamName As Name
From Team Natural join Standing 
where (points > (select avg(points) AS average_of_point_in_league from Standing)
       and
       (
         CoachName = SemiCoachName
       
         or 
         
         (CoachName <> SemiCoachName
              and 
              SemiCoachName <> OwnerName)
          )
      )
group by TeamName
having Length(TeamName) >= 2
order by TeamName DESC;

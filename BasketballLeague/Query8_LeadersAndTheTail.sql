(select TeamName As Name, points As points
 from standing
 group by TeamName, points
 having Length(TeamName) >= 3 and points > 5
 order by points DESC, TeamName ASC
 Fetch first 2 rows only
) union all
(select TeamName As Name, points As points
 from standing 
 group by TeamName, points
 having Length(TeamName) >= 3 and points > 5
 order by points ASC
 Fetch first 1 rows only
);

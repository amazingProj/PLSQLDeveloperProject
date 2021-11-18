select Distinct RefreeName AS NAME,  RExprience AS Years , RAge AS Age
from refree r, game g
where (r.Refreeid = g.refreeid and
g.winnername = 'Maccabi Palytika Tel Aviv' and
r.rexprience > 5) or  ((select points from Standing where TeamName='Maccabi Palytika Tel Aviv' 
group by points
having points >= 10)/2 

 < 2*(select Count(*) from Game g1 where g1.RefreeID = r.Refreeid) - r.RAGE * 
 (select Count(*) from Game g2 where g2.ArenaName = 'Yad Elihau' and r.Refreeid = g2.refreeid))
 
 or (r.RefreeName ='Moshe Gold' and g.winnername = 'Maccabi Palytika Tel Aviv')
group by RefreeName, RExprience, RAge
having  Length(RefreeName) >= 3 and Exists(select RefreeName from Refree) 
and Exists(select RExprience from Refree) and
Exists(select RAge from Refree) and RExprience > 0 and RAge > 0 
order by RefreeName ASC, RAge DESC;



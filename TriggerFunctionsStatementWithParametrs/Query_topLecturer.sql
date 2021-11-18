select lec.expirience As years_in_academy, lec.Rank as lecturer_rank, lec.Personid As id,
(select LastName from person p where lec.personid = p.personid) As last_name, 
(select FirstName from person p where lec.personid = p.personid) As First_name
 from lecturer lec
 where lec.rank >= &< name = "lecturer rank" TYPE = "integer" hint = "please enter a rank of lecturer">
 group by lec.expirience, lec.rank, lec.personid
 having Exists(select lec.expirience from lecturer group by expirience, rank, personid
 having Exists(select personid from Person where lec.personid = personid) and
 Exists(select expirience from Lecturer))
 and lec.rank >= 1 and Length(lec.personid) = 9
 order by lec.personid ASC, Lec.Rank DESC, years_in_academy ASC;

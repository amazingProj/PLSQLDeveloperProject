delete from Standing
where points = (select lowest from (select Min(points) as lowest from standing))

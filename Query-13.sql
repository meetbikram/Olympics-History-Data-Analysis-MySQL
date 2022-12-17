

  /*  19. In which Sport/event, India has won highest medals.  */

	with t1 as
        	(select sport, count(1) as total_medals
        	from olympics_history
        	where medal <> 'NA'
        	and team = 'India'
        	group by sport
        	order by total_medals desc),
        t2 as
        	(select *, rank() over(order by total_medals desc) as rnk
        	from t1)
		select sport, total_medals
		from t2
		where rnk = 1;
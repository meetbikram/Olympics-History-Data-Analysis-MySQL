

/*  11. Write SQL query to fetch the top 5 athletes who won the most Olympics gold medal.  */

-- Filter Condition - Athletes who won the gold medals
-- Top Five Athletes

with 
t1 as
	(SELECT Name, COUNT(1) as total_gold_medals
	 FROM olympics_history 
     WHERE Medal ='Gold'
     GROUP BY Name 
	 ORDER BY COUNT(1) desc),
t2 as 
    (SELECT *, DENSE_RANK() OVER(ORDER BY total_gold_medals DESC) AS rnk
	FROM t1)
	SELECT *
	FROM t2 WHERE rnk <=5;
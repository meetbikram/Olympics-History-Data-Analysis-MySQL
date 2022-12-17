

/*  6. Identify the sport which was played in all summer olympics. */

    SELECT *FROM OLYMPICS_HISTORY;

    -- 1. find the total no of olympics games
    -- 2. find for each sport, how many games where they played in
    -- 3. Compare 1 & 2

with t1 as 
         (SELECT count(DISTINCT Games) AS total_summer_games
          from olympics_history where Season ='Summer'),
	 t2 as 
		 ( SELECT DISTINCT sport, Games FROM olympics_history
           WHERE Season='Summer' ORDER BY Games),
	 t3 as 
		( SELECT Sport, COUNT(Games) As no_of_games
		from t2 GROUP BY Sport) 
        SELECT *FROM t3 join t1 on t1.total_summer_games=t3.no_of_games;
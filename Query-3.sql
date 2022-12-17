
/* # 3. Mention the total no of nations who participated in each olympics game? */

SELECT Games, COUNT(DISTINCT Team) Total_Olympic_Teams FROM olympics_history GROUP BY Games;
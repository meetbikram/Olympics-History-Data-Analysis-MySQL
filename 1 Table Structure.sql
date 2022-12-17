
-- For Comment use Symblos like --, #, /*  */

/* TABLE 1 - OLYMPIC HISTORY */
DROP TABLE IF EXISTS OLYMPICS_HISTORY;
CREATE TABLE IF NOT EXISTS OLYMPICS_HISTORY;
(
    id          INT,
    name        VARCHAR(30),
    sex         VARCHAR(30),
    age         VARCHAR(30),
    height      VARCHAR(30),
    weight      VARCHAR(30),
    team        VARCHAR(30),
    noc         VARCHAR(30),
    games       VARCHAR(30),
    year        INT,
    season      VARCHAR(30),
    city        VARCHAR(30),
    sport       VARCHAR(30),
    event       VARCHAR(30),
    medal       VARCHAR(30)
);

select *from olympics_history;
select count(*) as Total_Rows from olympics_history;


/* TABLE 2 - OLYMPIC HISTORY_NOC_REGIONS */
DROP TABLE IF EXISTS OLYMPICS_HISTORY_NOC_REGIONS;
CREATE TABLE IF NOT EXISTS OLYMPICS_HISTORY_NOC_REGIONS;
(
    noc         VARCHAR(60),
    region      VARCHAR(60),
    notes       VARCHAR(60)
);

SELECT *FROM OLYMPICS_HISTORY_NOC_REGIONS;  
SELECT COUNT(*) FROM OLYMPICS_HISTORY_NOC_REGIONS;

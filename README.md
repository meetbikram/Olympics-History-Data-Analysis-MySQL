## Olympics-Hiatory-Analysis-MySQL
Data Analysis using SQL of Olympic History datasets which is having  more than 260k Rows  and 15 Columns 

### Olympic_History Dataset
#### select *from olympics_history;
![image](https://user-images.githubusercontent.com/41924501/208185635-d576d331-94f1-45cb-8b9a-c1eab74921e8.png)

### Table Structure 

DROP TABLE IF EXISTS OLYMPICS_HISTORY;
CREATE TABLE IF NOT EXISTS OLYMPICS_HISTORY
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

DROP TABLE IF EXISTS OLYMPICS_HISTORY_NOC_REGIONS;
CREATE TABLE IF NOT EXISTS OLYMPICS_HISTORY_NOC_REGIONS
(
    noc         VARCHAR(60),
    region      VARCHAR(60),
    notes       VARCHAR(60)
);

#### 1. How many olympics games have been held ? 

SELECT count(distinct Team) AS NO_OF_TEAMS  FROM OLYMPICS_HISTORY;

#### 2. List down all Olympics games held so far.

SELECT DISTINCT Games FROM olympics_history ORDER BY Games;

#### 3. 






-- Twitch Viewership Data Exploration


-----------------------------------------------------------------------------------------------------


--  Viewers Engagement Rate Per Year

select
	YEAR(Date),
	sum(cast(Hours_watched as Bigint))/ SUM(cast(Hours_streamed as Bigint)) 
from 
Twitch_game_data
group by Year(Date)
order by 1;


------------------------------------------------------------------------------------------------------


-- Hours watched YTD

select 
 Hours_watched = sum(cast(Hours_watched as Bigint))
from
Twitch_game_data
where Year = 2023;


------------------------------------------------------------------------------------------------------


-- Hours Watched YOY

SELECT 
    t1.Year,
    t1.TotalHoursWatched AS CurrentYearHours,
    t2.TotalHoursWatched AS PreviousYearHours,
	(t1.TotalHoursWatched - t2.TotalHoursWatched)* 100 / t2.TotalHoursWatched YOYChange
FROM
    (SELECT YEAR([Date]) AS Year, 
	SUM(Cast(Hours_watched As bigint)) AS TotalHoursWatched
    FROM Twitch_game_data
    GROUP BY YEAR([Date])) t1
LEFT JOIN
    (SELECT YEAR([Date]) AS Year, 
	SUM(Cast(Hours_watched As bigint)) AS TotalHoursWatched
    FROM Twitch_game_data
    GROUP BY YEAR([Date])) t2
ON
    t1.Year = t2.Year + 1
ORDER BY
    t1.Year;


-------------------------------------------------------------------------------------------------------


-- Hours Streamed YTD

select 
 Hours_streamed = sum(cast(Hours_streamed as Bigint))
from
Twitch_game_data
where Year = 2023;


--------------------------------------------------------------------------------------------------------

-- Hours Streamed YOY

SELECT 
    t1.Year,
    t1.TotalHoursStremed AS CurrentYearHours,
    t2.TotalHoursStremed AS PreviousYearHours,
	(t1.TotalHoursStremed - t2.TotalHoursStremed)* 100 / t2.TotalHoursStremed YOYChange
FROM
    (SELECT YEAR([Date]) AS Year, 
	SUM(Cast(Hours_streamed As bigint)) AS TotalHoursStremed
    FROM Twitch_game_data
    GROUP BY YEAR([Date])) t1
LEFT JOIN
    (SELECT YEAR([Date]) AS Year, 
	SUM(Cast(Hours_streamed As bigint)) AS TotalHoursStremed
    FROM Twitch_game_data
    GROUP BY YEAR([Date])) t2
ON
    t1.Year = t2.Year + 1
ORDER BY
    t1.Year;


-------------------------------------------------------------------------------------------------------

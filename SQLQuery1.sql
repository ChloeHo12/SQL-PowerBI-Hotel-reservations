--Create temporary table of 3 years
with hotels as (
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$'])

--Answer the question: Is our hotel revenue growing by year?
select arrival_date_year,
hotel,
round(sum((stays_in_week_nights + stays_in_weekend_nights)*adr),2) as revenue 
from hotels
group by arrival_date_year,hotel
--> City Hotel revenue was growing from 2018 to 2020 while Resort Hotel Revenue increased from 2018 to 2019 and decreased in 2020.

select * from dbo.market_segment$

The ID's and durations for all trips of duration greater than 500, ordered by duration.

SELECT 
duration,
trip_id
FROM 
trips 
WHERE 
duration > '500'  
ORDER BY duration


Every column of the stations table for station id 84.

SELECT 
*
FROM 
stations
WHERE 
station_id = 84



The min temperatures of all the occurrences of rain in zip 94301.

SELECT
MinTemperatureF, *
FROM
weather 
WHERE 
ZIP = 94301  AND
EVENTS = 'Rain'


What was the hottest day in our data set? Where was that?

SELECT
MaxTemperatureF, Date, Zip
FROM
weather 
ORDER BY MaxTemperatureF desc


How many trips started at each station?

SELECT
dockcount
FROM
stations
ORDER BY station_id, desc

What's the shortest trip that happened?

SELECT 
duration, start_station, trip_id
FROM 
trips
ORDER BY duration asc

What is the average trip duration, by end station?

SELECT 
AVG(duration) duration, 
end_station
FROM 
trips
GROUP by end_station

SELECT 
trips.duration,
weather.Events,
trips.start_date,
weather.Date
FROM   
trips 
JOIN 
weather 
ON
trips.zip_code = weather.ZIP 
WHERE 
weather.Events = 'Rain'
ORDER BY duration desc 

we worked with smaller table to minimize overload  SELECT
smaller_trips.duration,
weather.Events,
smaller_trips.start_date,
weather.Date,
DATE(start_date) trip_date
FROM   
smaller_trips 
JOIN 
weather 
ON
trip_date = weather.Date 
WHERE 
weather.Events = 'Rain'
ORDER BY duration desc 
limit 3


SELECT
smaller_trips.start_station,
stations.dockcount,
COUNT(*)
FROM 
smaller_trips
JOIN 
stations 
ON
stations.name = smaller_trips.start_station
GROUP by 1,2 
ORDER BY 2 desc


Airbnb Drill

1. most expensive listings : Centrum West
SELECT 
neighbourhood, price
FROM 
listings
ORDER by price desc



most popular neighborhood
 SELECT 
 neighbourhood, count(*)
 FROM
 LISTINGS
 GROUP by neighbourhood


Most popular months
SELECT
price,
date,
available
FROM
calendar 
WHERE
available == 't'
GROUP BY
date
ORDER BY
price

Cheapest Times to Go

SELECT
available,
date,
count(*) as rooms
FROM
calendar
WHERE
available = 'f'
GROUP BY
date
ORDER BY
rooms desc



could not find descending order nor could I change names of columns
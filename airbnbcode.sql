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
 From   
 listings
 GROUP by neighbourhood



could not find descending order nor could I change names of columns
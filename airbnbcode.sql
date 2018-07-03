SELECT
MinTemperatureF, *
FROM
weather 
WHERE 
ZIP = 94301  AND
EVENTS = 'Rain'

SELECT 
*
FROM 
stations
WHERE 
station_id = 84

SELECT 
duration,
trip_id
FROM 
trips 
WHERE 
duration > '500'  
ORDER BY duration

SELECT 
start_station
FROM 
trips
WHERE 
start_date like '2015-11-17'    **had trouble


SELECT 
duration
FROM 
trips
GROUP by duration

SELECT 
AVG (duration) duration,
end_station
FROM 
trips
GROUP by end_station


shortest trip
SELECT
duration, trip_id
FROM 
trips
GROUP by duration


airbnb

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
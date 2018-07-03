SELECT
MinTemperatureF
FROM
weather 
WHERE 
ZIP = 94301  AND
raining chance of precip. = 100%

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
AVG (duration), end_station
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

1.
SELECT 
field6, field10
FROM 
listings
ORDER by field10 desc

idk why its so expensive does not have good reviews
whats the point of this drill, i can easily find it manually


 SELECT 
 field6, count(*)
 From   
 listings
 GROUP by field6

could not find descending order nor could I change names of columns
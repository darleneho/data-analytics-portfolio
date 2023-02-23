-- Step 3
select * 
from city_weather 
limit 5;

-- Step 4
select * 
from bird_data 
limit 5;

-- step 5 to 9
 SELECT id,
altitude,
date_time,
device_info_serial,
direction,
latitude,
longitude,
speed_2d,
bird_name,
nearest_city,
country, 
city.avg_temp 
FROM bird_data AS bird 
LEFT JOIN city_weather AS city 
ON bird.date = city.DATE AND bird.nearest_city = city.CITY 
ORDER BY bird.id;


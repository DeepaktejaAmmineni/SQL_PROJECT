CREATE DATABASE flight_data;
USE flight_data;
SELECT * FROM flight_data.updated_cleaned_flight_data;

-- Check the Total Number of Flights

SELECT COUNT(*) AS total_flights FROM updated_cleaned_flight_data;

-- Find the Most Common Airline Carrier

SELECT UniqueCarrier, COUNT(*) AS total_flights 
FROM updated_cleaned_flight_data 
GROUP BY UniqueCarrier 
ORDER BY total_flights DESC;

-- Check the Average Delay Time Per Carrier

SELECT UniqueCarrier, AVG(Arrival_Delay) AS avg_arrival_delay, AVG(Dep_Delay) AS avg_departure_delay
FROM updated_cleaned_flight_data
GROUP BY UniqueCarrier
ORDER BY avg_arrival_delay DESC;

--  Find the Busiest Airports

SELECT Origin_Airport, COUNT(*) AS flight_count
FROM updated_cleaned_flight_data
GROUP BY Origin_Airport
ORDER BY flight_count DESC
LIMIT 10;

-- Find the Days with the Most Flight Delays

SELECT FlightDate, COUNT(*) AS total_delayed_flights
FROM updated_cleaned_flight_data
WHERE Arr_Delay_15min = 1 OR Dep_Delay_15min = 1
GROUP BY FlightDate
ORDER BY total_delayed_flights DESC
LIMIT 10;

-- Identify the Worst Airports for Delays

SELECT Origin_Airport, AVG(Dep_Delay) AS avg_departure_delay
FROM updated_cleaned_flight_data
GROUP BY Origin_Airport
ORDER BY avg_departure_delay DESC
LIMIT 10;

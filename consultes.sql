SELECT MAX(flightID) AS total FROM flights;
SELECT COUNT(flightID) AS total FROM flights;


SELECT Origin AS origin_airport,
AVG (ArrDelay) AS delays_average, AVG(DepDelay) AS departures_average
FROM flights
GROUP BY Origin;


SELECT Origin AS origin_airport, colYear AS year, colMonth AS month,
AVG (ArrDelay) AS delays_average
FROM flights
GROUP BY origin
ORDER BY colYear ASC, colMonth ASC;


SELECT City, colYear AS year, colMonth AS month, AVG (ArrDelay) AS delays_average FROM flights
INNER JOIN usairports
ON flights.Origin=usairports.IATA
GROUP BY City
ORDER BY colYear ASC, colMonth ASC;


SELECT count(Cancelled) AS total_cancelled, UniqueCarrier, colYear AS year, colMonth AS month
FROM flights
WHERE Cancelled=1
GROUP BY UniqueCarrier, colYear, colMonth
ORDER BY total_cancelled DESC, year ASC, month ASC;


SELECT DISTINCT (TailNum), Distance AS total_distance
FROM flights
GROUP BY TailNum
ORDER BY Distance DESC
LIMIT 10;


SELECT UniqueCarrier,
AVG (ArrDelay) AS avgDelay
FROM flights
GROUP BY (UniqueCarrier) 
HAVING avgDelay < 10
ORDER BY avgDelay DESC;




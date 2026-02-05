-- notes: 
---- pull date id where the temperature is higher than the date prior
---- any order 

SELECT wthr1.id
FROM Weather wthr1
JOIN Weather wthr2 ON wthr1.recordDate - wthr2.RecordDate = 1
WHERE wthr1.Temperature > wthr2.temperature;

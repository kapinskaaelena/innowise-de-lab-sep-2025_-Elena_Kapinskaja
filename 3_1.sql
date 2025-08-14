-- Задача: хочу узнать, сколько клиентов из каждой страны.
-- Использую GROUP BY по country и считаю количество.

SELECT
  country,
  COUNT(*) AS count
FROM Customers
GROUP BY country;
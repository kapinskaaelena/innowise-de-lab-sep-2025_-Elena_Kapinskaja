-- Задача: хочу увидеть всех клиентов, отсортированных по возрасту — от старших к младшим.

SELECT
  first_name,
  last_name,
  age
FROM Customers
ORDER BY age DESC;
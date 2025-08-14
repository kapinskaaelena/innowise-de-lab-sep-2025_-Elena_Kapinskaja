-- Задача 1: хочу выбрать всех клиентов из США, которым больше 25 лет.

SELECT first_name, last_name, age, country
FROM Customers
WHERE country = 'USA' AND age > 25;

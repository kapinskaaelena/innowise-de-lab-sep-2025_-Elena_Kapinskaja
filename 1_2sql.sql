-- Задача 2: хочу выбрать все заказы, где сумма больше 1000.

SELECT order_id, item, amount, customer_id
FROM Orders
WHERE amount > 1000;
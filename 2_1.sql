-- Задача: хочу видеть, кто что заказал — имя клиента + заказ.
-- Для этого соединяю таблицы Orders и Customers по customer_id.

SELECT
  c.first_name,
  c.last_name,
  o.item,
  o.amount
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id;
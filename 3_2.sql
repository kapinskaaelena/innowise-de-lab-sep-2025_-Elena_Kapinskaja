-- Задача: хочу узнать, сколько заказов было на каждый товар
-- и какова средняя сумма заказа по каждому из них.

select distinct
  item,
  COUNT(*) AS count,
  ROUND(AVG(amount), 2) AS avg_amount
FROM Orders
GROUP BY item
order by item;
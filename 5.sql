

--  Шаг 1: Создание функции CalculateAnnualBonus
-- ------------------------------------------------
-- Функция принимает:
--   - employee_id (INTEGER) — ID сотрудника
--   - salary (DECIMAL) — его зарплату
-- Возвращает:
--   - бонус (DECIMAL) — 10% от зарплаты
-- Используем язык PL/pgSQL
-- ------------------------------------------------
CREATE OR REPLACE FUNCTION CalculateAnnualBonus(employee_id INTEGER, salary DECIMAL)
RETURNS DECIMAL AS $$
BEGIN
    -- Просто и понятно: бонус — это 10% от зарплаты
    RETURN salary * 0.10;
END;
$$ LANGUAGE plpgsql;

--  Шаг 2: Использование функции в SELECT
-- ------------------------------------------------
-- Показываем потенциальный бонус для каждого сотрудника
-- Выводим: EmployeeID, FirstName, Salary, и рассчитанный бонус
-- ------------------------------------------------
SELECT 
    EmployeeID,
    FirstName,
    Salary,
    CalculateAnnualBonus(EmployeeID, Salary) AS AnnualBonus
FROM Employees;

--  Шаг 3: Создание представления IT_Department_View
-- ------------------------------------------------
-- Представление — это как сохранённый SELECT-запрос
-- Оно показывает только сотрудников из отдела 'IT'
-- Выводим: EmployeeID, FirstName, LastName, Salary
-- ------------------------------------------------
CREATE OR REPLACE VIEW IT_Department_View AS
SELECT 
    EmployeeID,
    FirstName,
    LastName,
    Salary
FROM Employees
WHERE Department = 'IT';

--  Шаг 4: Выборка из представления
-- ------------------------------------------------
-- Просто смотрим, кто у нас в IT-отделе
-- ------------------------------------------------
SELECT * FROM IT_Department_View;



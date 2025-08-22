

--  Шаг 1: Найти ProjectName всех проектов, где 'Bob Johnson' работал более 150 часов
-- ------------------------------------------------
-- Используем JOIN между EmployeeProjects и Projects
-- Фильтруем по имени и количеству часов
-- ------------------------------------------------
SELECT p.ProjectName
FROM EmployeeProjects ep
JOIN Projects p ON ep.ProjectID = p.ProjectID
JOIN Employees e ON ep.EmployeeID = e.EmployeeID
WHERE e.FirstName = 'Bob' AND e.LastName = 'Johnson'
  AND ep.HoursWorked > 150;

--  Шаг 2: Увеличить Budget всех проектов на 10%, если к ним назначен хотя бы один сотрудник из отдела 'IT'
-- ------------------------------------------------
-- Используем EXISTS с подзапросом, чтобы проверить наличие сотрудника из 'IT'
-- Обновляем только те проекты, где такие сотрудники есть
-- ------------------------------------------------
UPDATE Projects
SET Budget = Budget * 1.10
WHERE EXISTS (
    SELECT 1
    FROM EmployeeProjects ep
    JOIN Employees e ON ep.EmployeeID = e.EmployeeID
    WHERE ep.ProjectID = Projects.ProjectID
      AND e.Department = 'IT'
);

--  Шаг 3: Установить EndDate на год позже StartDate, если EndDate IS NULL
-- ------------------------------------------------
-- Используем UPDATE с условием IS NULL
-- Добавляем 1 год к StartDate с помощью interval
-- ------------------------------------------------
UPDATE Projects
SET EndDate = StartDate + INTERVAL '1 year'
WHERE EndDate IS NULL;

--  Шаг 4: Вставить нового сотрудника и назначить его на проект 'Website Redesign' с 80 часами — всё в одной транзакции
-- ------------------------------------------------
-- Используем RETURNING для получения нового EmployeeID
-- Затем вставляем в EmployeeProjects
-- ------------------------------------------------
BEGIN;

-- Вставка нового сотрудника
INSERT INTO Employees (FirstName, LastName, Department, Salary)
VALUES ('Elena', 'Kapinskaya', 'IT', 72000.00)
RETURNING EmployeeID INTO new_employee_id;

-- Назначение на проект 'Website Redesign'
-- Получаем ProjectID через подзапрос
INSERT INTO EmployeeProjects (EmployeeID, ProjectID, HoursWorked)
VALUES (
    new_employee_id,
    (SELECT ProjectID FROM Projects WHERE ProjectName = 'Website Redesign'),
    80
);

COMMIT;

--  Проверка: Выводим всех сотрудников, назначенных на 'Website Redesign'
SELECT e.FirstName, e.LastName, ep.HoursWorked
FROM EmployeeProjects ep
JOIN Employees e ON ep.EmployeeID = e.EmployeeID
JOIN Projects p ON ep.ProjectID = p.ProjectID
WHERE p.ProjectName = 'Website Redesign';


--  Шаг 1: Создание таблицы Departments
-- ------------------------------------------------
-- Добавляем новую сущность — отделы компании
-- SERIAL — автоинкремент, создаёт уникальный ID
-- DepartmentName — уникальное и обязательное название
-- Location — город или офис, где находится отдел
-- ------------------------------------------------
CREATE TABLE Departments (
    DepartmentID SERIAL PRIMARY KEY,           -- Уникальный ID отдела
    DepartmentName VARCHAR(50) UNIQUE NOT NULL,-- Название отдела, обязательно и уникально
    Location VARCHAR(50)                        -- Местоположение, можно оставить пустым
);

--  Шаг 2: Добавление столбца Email в таблицу Employees
-- ------------------------------------------------
-- ALTER TABLE — команда для изменения структуры таблицы
-- Добавляем Email как VARCHAR(100), пока без ограничений
-- ------------------------------------------------
ALTER TABLE Employees
ADD COLUMN Email VARCHAR(100);  -- Новый столбец для email-адресов

--  Шаг 3: Заполнение Email и добавление ограничения UNIQUE
-- ------------------------------------------------
-- Сначала заполняем email-адреса, чтобы не было конфликтов
-- Потом добавляем ограничение UNIQUE — чтобы email не повторялись
-- ------------------------------------------------
UPDATE Employees SET Email = 'alice.smith@example.com' WHERE FirstName = 'Alice' AND LastName = 'Smith';
UPDATE Employees SET Email = 'bob.johnson@example.com' WHERE FirstName = 'Bob' AND LastName = 'Johnson';
UPDATE Employees SET Email = 'charlie.brown@example.com' WHERE FirstName = 'Charlie' AND LastName = 'Brown';
UPDATE Employees SET Email = 'diana.prince@example.com' WHERE FirstName = 'Diana' AND LastName = 'Prince';
UPDATE Employees SET Email = 'eve.davis@example.com' WHERE FirstName = 'Eve' AND LastName = 'Davis';

-- Добавляем ограничение UNIQUE
ALTER TABLE Employees
ADD CONSTRAINT unique_email UNIQUE (Email);

--  Шаг 4: Переименование столбца Location в OfficeLocation
-- ------------------------------------------------

ALTER TABLE Departments
RENAME COLUMN Location TO OfficeLocation;
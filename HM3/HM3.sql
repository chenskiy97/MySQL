DROP DATABASE IF EXISTS homework3;
CREATE DATABASE IF NOT EXISTS homework3;

USE homework3;

DROP TABLE IF EXISTS staff;

CREATE TABLE IF NOT EXISTS staff
(
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(45) NOT NULL,
    `last_name` VARCHAR(45) NOT NULL,
    `post` VARCHAR(45) NOT NULL,
    `seniority` INT NOT NULL,
    `salary` DECIMAL(8,2) NOT NULL,
    `age` INT NOT NULL
);


INSERT staff (first_name, last_name, post, seniority, salary, age)
VALUES
('Вася', 'Петров', 'Начальник', 40, 100000, 60),
('Петр', 'Власов', 'Начальник', 8, 70000, 30),
('Катя', 'Катина', 'Инженер', 2, 70000, 25),
('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
('Иван', 'Петров', 'Рабочий', 40, 30000, 59),
('Петр', 'Петров', 'Рабочий', 20, 55000, 60),
('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
('Максим', 'Петров', 'Рабочий', 2, 11000, 19),
('Юрий', 'Петров', 'Рабочий', 3, 12000, 24),
('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);

-- 1. Отсортируйте данные по полю заработная плата (salary) в порядке: убывания; возрастания для каждой группы
/*
SELECT id, first_name, last_name, post, seniority, salary, age
FROM staff
ORDER BY salary;


SELECT id, first_name, last_name, post, seniority, salary, age
FROM staff
ORDER BY salary DESC;

*/

-- 2. Выведите 5 максимальных заработных плат (saraly)
/*
SELECT id, first_name, last_name, post, salary 
FROM staff
ORDER BY salary DESC
LIMIT 5;
*/

-- 3. Посчитайте суммарную зарплату (salary) по каждой специальности (роst)
/*
SELECT 
	post AS "Должность",
    SUM(salary) AS "Суммарная зарпалата по каждой специальности"
FROM staff
GROUP BY post;
*/

-- 4. Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.
/*
SELECT
	post,
	COUNT(*) AS 'post count'
FROM staff
WHERE post = 'Рабочий'AND age BETWEEN 24 AND 49;
*/

-- 5. Найдите количество специальностей
/*
SELECT DISTINCT(post)
FROM staff;
*/

-- 6. Выведите специальности, у которых средний возраст сотрудников меньше 30 лет
/*
SELECT 
	post AS "Должность",
    AVG(age) AS "Cредний возраст по отделу"
FROM staff
GROUP BY post
HAVING AVG(age) <= 30;
*/
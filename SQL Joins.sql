CREATE DATABASE franchise;
-- impor table restaurants dan meals
SELECT
	*
FROM meals;

SELECT
	*
FROM restaurants;

-- 1. join untuk tabel restaurant dan meals untuk menemukan restaurant dengan menu terbanyak
SELECT
    restaurant_name,
    COUNT(meals.id) AS total_menu
FROM
    restaurants
LEFT JOIN
    meals ON restaurants.id = meals.restaurant_id
GROUP BY
    restaurant_name
ORDER BY
    total_menu DESC;

-- 2 Restaurant yang mempunyai menu termahal
SELECT
	restaurant_name,
    meal_name,
    price
FROM
	restaurants 
INNER JOIN
	meals ON restaurants.id = meals.restaurant_id
ORDER BY
	price DESC;
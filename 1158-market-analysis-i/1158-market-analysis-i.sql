
-- find unique buyer
-- join date, count of orders in 2019
-- return in any order

-- find unique buyer
-- join date, count of orders in 2019
-- return in any order

WITH cte AS (
    SELECT buyer_id, order_id
    FROM Orders
    WHERE order_date BETWEEN '2019-01-01' AND '2019-12-31' 
)

SELECT 
    u.user_id AS buyer_id, 
    u.join_date, 
    COUNT(o.order_id) AS orders_in_2019
FROM Users u
LEFT JOIN cte o ON u.user_id = o.buyer_id
GROUP BY u.user_id, u.join_date
ORDER BY buyer_id;
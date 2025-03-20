-- Pull the departments that generated less than $600 in 2022

SELECT I.Department, SUM(S.Revenue) AS total_revenue
FROM SALES S
JOIN ITEMS I ON S.Item_id = I.Item_id
WHERE YEAR(S.Date) = 2022
GROUP BY I.Department
HAVING SUM(S.Revenue) < 600;

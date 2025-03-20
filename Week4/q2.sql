SELECT COUNT(DISTINCT S.Customer_id) AS total_customers,
       AVG(S.Revenue) AS avg_spent_per_customer
FROM SALES S
WHERE S.Date BETWEEN '2023-01-01' AND '2023-01-31';

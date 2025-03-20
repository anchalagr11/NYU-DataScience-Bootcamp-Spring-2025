--Pull total number of orders that were completed on 18th March 2023 with the first name ‘John’ and last name Doe’

SELECT COUNT(*) AS total_orders
FROM SALES S
JOIN CUSTOMERS C ON S.Customer_id = C.Customer_id
WHERE S.Date = '2023-03-18'
AND C.First_name = 'John'
AND C.Last_name = 'Doe';
--What were the orders that were purchased in our most lucrative order

SELECT S.Order_id, S.Item_id, S.Quantity, S.Revenue, I.Item_name, I.Department
FROM SALES S
JOIN ITEMS I ON S.Item_id = I.Item_id
WHERE S.Order_id = (
    SELECT Order_id
    FROM SALES
    ORDER BY Revenue DESC
    LIMIT 1);

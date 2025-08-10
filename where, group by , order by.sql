SELECT `Customer ID`, `Customer Country`, `Gender`
FROM `customer data`
WHERE `Customer ID` IN (
    SELECT `Customer ID`
    FROM `amazon orders dataset`
    GROUP BY `Customer ID`
    HAVING SUM(`Order Value`) > 5000
);
SELECT sales_poc, avg_order_value
FROM (
    SELECT `Sales POC` AS sales_poc, AVG(`Order Value`) AS avg_order_value
    FROM `amazon orders dataset`
    GROUP BY `Sales POC`
) AS sales_avg
ORDER BY avg_order_value DESC;
SELECT 
    c.`Customer ID`,
    c.`Customer Country`,
    (SELECT COUNT(*) 
     FROM `amazon orders dataset` AS o 
     WHERE o.`Customer ID` = c.`Customer ID`) AS total_orders
FROM `customer data` AS c;